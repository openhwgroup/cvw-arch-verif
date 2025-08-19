#!/usr/bin/env python3
"""
Extract normative rules from all .adoc files.

This script finds all .adoc files in the riscv-isa-manual directory and extracts
normative rules that are marked with special tags:
1. Block-level format: [[norm:identifier]]
2. Inline format: [#norm:identifier]#rule_text#

For each .adoc file, it generates:
- A CSV file with extracted rules
- An .adoc file with a table of the rules

Output files are placed in cvw-arch-verif/docs/ctp/build/rules/
"""

import csv
import glob
import os
import re
import sys
from pathlib import Path


def clean_asciidoc_markup(text):
    """
    Clean ASCIIDoc markup from text.

    Args:
        text (str): Text with ASCIIDoc markup

    Returns:
        str: Cleaned text
    """
    # Remove ASCIIDoc markup patterns from rule text
    text = re.sub(r'<<[^>]+>>', '', text)  # Remove cross-references
    text = re.sub(r'`([^`]+)`', r'\1', text)  # Remove code markup
    text = re.sub(r'\*([^*]+)\*', r'\1', text)  # Remove bold markup
    text = re.sub(r'_([^_]+)_', r'\1', text)  # Remove italic markup
    text = re.sub(r'\+\+\+([^+]+)\+\+\+', r'\1', text)  # Remove passthrough

    # Remove other ASCIIDoc directives
    text = re.sub(r'\[wavedrom.*?\]\s*', '', text, flags=re.DOTALL)
    text = re.sub(r'\[NOTE\].*?\n====', '', text, flags=re.DOTALL)
    text = re.sub(r'include::[^\]]+\[\]', '', text)

    # Clean up extra whitespace
    text = ' '.join(text.split())

    return text

def extract_block_level_rules(content):
    """
    Extract block-level normative rules with format [[norm:identifier]].

    Args:
        content (str): File content

    Returns:
        list: List of extracted rules with their positions
    """
    rules = []

    # Pattern for block-level tags - simple identifier extraction
    patterns = [
        # Complete block pattern with closing ]]
        r'\[\[(norm:[^\]]+)\]\]',
        # Incomplete patterns missing closing ]
        r'\[\[(norm:[^\]]+)\](?!\])',
        r'\[\[(norm:[^\]]+)(?=\s*\n|\s*$)',
    ]

    captured_positions = set()

    for pattern in patterns:
        for match in re.finditer(pattern, content):
            start_pos = match.start()

            # Skip if we already captured a rule near this position
            if any(abs(start_pos - pos) < 10 for pos in captured_positions):
                continue

            identifier = match.group(1).strip()

            # Extract the following paragraph as the rule text
            rule_text = extract_following_paragraph(content, match.end())
            rule_text = clean_asciidoc_markup(rule_text)

            rules.append({
                'identifier': identifier,
                'rule_text': rule_text,
                'position': start_pos,
                'type': 'block'
            })

            captured_positions.add(start_pos)

    return rules

def extract_inline_rules(content):
    """
    Extract inline normative rules with format [#norm:identifier]#rule_text#.

    Args:
        content (str): File content

    Returns:
        list: List of extracted rules with their positions
    """
    rules = []

    # Pattern for inline tags - simple identifier extraction
    patterns = [
        # Standard format: [#norm:identifier]#rule_text#
        (r'\[#(norm:[^\]]+)\]#([^#]*?)#', 0),
        # Multi-line format with re.DOTALL - handles cases where closing # is on different line
        (r'\[#(norm:[^\]]+)\]\s*\n?#(.*?)#', re.DOTALL | re.MULTILINE),
        # Multi-line format starting with # on same line
        (r'\[#(norm:[^\]]+)\]#(.*?)#', re.DOTALL | re.MULTILINE),
        # Handle cases where the opening tag is on one line and content starts on next line
        (r'\[#(norm:[^\]]+)\]\s*\n#(.*?)#', re.DOTALL | re.MULTILINE),
        # Cases where tag has no closing ]# but has content following
        (r'\[#(norm:[^\]]+)\]\s*\n([^#\[]*?)(?=\n\[|\n==|\ninclude::|$)', re.DOTALL | re.MULTILINE)
    ]

    for pattern, flags in patterns:
        for match in re.finditer(pattern, content, flags):
            start_pos = match.start()
            identifier = match.group(1).strip()
            rule_text = match.group(2).strip()

            rule_text = clean_asciidoc_markup(rule_text)

            # Skip if this rule was already captured by a previous pattern
            if not any(abs(r['position'] - start_pos) < 20 for r in rules):
                rules.append({
                    'identifier': identifier,
                    'rule_text': rule_text,
                    'position': start_pos,
                    'type': 'inline'
                })

    return rules

def extract_following_paragraph(content, start_pos):
    """
    Extract the paragraph following a block-level normative tag.

    Args:
        content (str): File content
        start_pos (int): Position after the normative tag

    Returns:
        str: The following paragraph text
    """
    # Find the start of the next meaningful content
    remaining_content = content[start_pos:]

    # Skip any immediate whitespace or newlines
    match = re.search(r'\S', remaining_content)
    if not match:
        return ""

    start_offset = match.start()
    text_start = start_pos + start_offset

    # Extract until we hit a paragraph break (double newline) or structural element
    paragraph_content = content[text_start:]

    # Stop at double newlines, section headers, or other structural elements
    stops = [
        r'\n\s*\n',           # Paragraph breaks
        r'\n\s*==+\s',        # Section headers
        r'\n\s*\[\[',         # Other block elements
        r'\n\s*\.',           # Dot commands
        r'\n\s*include::'     # Include directives
    ]

    end_pos = len(paragraph_content)
    for stop_pattern in stops:
        match = re.search(stop_pattern, paragraph_content)
        if match:
            end_pos = min(end_pos, match.start())

    paragraph = paragraph_content[:end_pos].strip()

    # Limit paragraph length for readability
    if len(paragraph) > 500:
        paragraph = paragraph[:500] + "..."

    return paragraph

def extract_rules_in_order(content):
    """
    Extract all normative rules and return them in document order.

    Args:
        content (str): File content

    Returns:
        list: All rules sorted by position in document
    """
    block_rules = extract_block_level_rules(content)
    inline_rules = extract_inline_rules(content)

    # Combine and sort by position
    all_rules = block_rules + inline_rules
    all_rules.sort(key=lambda x: x['position'])

    return all_rules

def create_asciidoc_table(rules, output_path):
    """
    Create an ASCIIDoc file with a table of the normative rules.

    Args:
        rules (list): List of normative rules
        output_path (str): Path to output .adoc file
    """
    content = """[cols="1,4", options="header"]
|===
|Identifier |Rule Text

"""

    for rule in rules:
        # Escape pipe characters in table cells
        identifier = rule['identifier'].replace('|', '\\|')
        rule_text = rule['rule_text'].replace('|', '\\|')

        content += f"|{identifier} |{rule_text}\n\n"

    content += "|===\n"

    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(content)

def process_adoc_file(file_path, output_dir):
    """
    Process a single .adoc file and generate CSV and .adoc outputs.

    Args:
        file_path (str): Path to input .adoc file
        output_dir (str): Directory for output files
    """
    print(f"Processing: {file_path}")

    try:
        with open(file_path, encoding='utf-8') as f:
            content = f.read()
    except UnicodeDecodeError:
        try:
            with open(file_path, encoding='latin-1') as f:
                content = f.read()
        except Exception as e:
            print(f"  Error reading file: {e}")
            return
    except Exception as e:
        print(f"  Error reading file: {e}")
        return

    # Extract rules
    rules = extract_rules_in_order(content)

    if not rules:
        print("  No normative rules found")
        return

    # Generate output file names
    base_name = Path(file_path).stem
    csv_path = os.path.join(output_dir, f"{base_name}.csv")
    adoc_path = os.path.join(output_dir, f"{base_name}.adoc")

    # Write CSV file
    try:
        with open(csv_path, 'w', newline='', encoding='utf-8') as csvfile:
            fieldnames = ['identifier', 'rule_text']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

            writer.writeheader()
            for rule in rules:
                writer.writerow({
                    'identifier': rule['identifier'],
                    'rule_text': rule['rule_text']
                })

        print(f"  CSV written: {csv_path}")
    except Exception as e:
        print(f"  Error writing CSV: {e}")
        return

    # Write ASCIIDoc table file
    try:
        create_asciidoc_table(rules, adoc_path)
        print(f"  Table written: {adoc_path}")
    except Exception as e:
        print(f"  Error writing table: {e}")
        return

    # Print summary
    block_count = len([r for r in rules if r['type'] == 'block'])
    inline_count = len([r for r in rules if r['type'] == 'inline'])
    print(f"  Found {len(rules)} rules ({block_count} block, {inline_count} inline)")

def main():
    """Main function."""
    # Find the riscv-isa-manual directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    base_dir = os.path.dirname(script_dir)  # cvw-arch-verif
    manual_dir = os.path.join(os.path.dirname(base_dir), "riscv-isa-manual", "src")

    if not os.path.exists(manual_dir):
        print(f"Error: riscv-isa-manual source directory not found at {manual_dir}")
        sys.exit(1)

    # Create output directory
    output_dir = os.path.join(base_dir, "docs", "ctp", "build", "rules")
    os.makedirs(output_dir, exist_ok=True)

    # Find all .adoc files
    adoc_pattern = os.path.join(manual_dir, "*.adoc")
    adoc_files = glob.glob(adoc_pattern)

    if not adoc_files:
        print(f"No .adoc files found in {manual_dir}")
        sys.exit(1)

    print(f"Found {len(adoc_files)} .adoc files in {manual_dir}")
    print(f"Output directory: {output_dir}")
    print()

    # Process each file
    processed_files = 0

    for adoc_file in sorted(adoc_files):
        process_adoc_file(adoc_file, output_dir)
        processed_files += 1
        print()

    print("Processing complete!")
    print(f"Processed {processed_files} .adoc files")
    print(f"Output files written to: {output_dir}")

if __name__ == "__main__":
    main()
