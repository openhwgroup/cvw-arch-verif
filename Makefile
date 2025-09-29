# Jordan Carlin jcarlin@hmc.edu
# Sept 10, 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

# Directories and files
CONFIG_FILE ?= configs/duts/cvw-rv64gc/test_config.yaml configs/duts/cvw-rv32gc/test_config.yaml
WORKDIR     ?= work

TESTDIR        := tests
SRCDIR64       := $(TESTDIR)/rv64
SRCDIR32       := $(TESTDIR)/rv32
PRIVDIR        := $(TESTDIR)/priv
PRIVHEADERSDIR := $(PRIVDIR)/headers
PRIVDIR64      := $(PRIVDIR)/rv64
PRIVDIR32      := $(PRIVDIR)/rv32

TEMPLATEDIR       := templates
TEST_TEMPLATE_DIR := generators/tests/templates
COV_TEMPLATE_DIR  := generators/coverage/templates
TEST_TEMPLATES    := $(wildcard $(TEST_TEMPLATE_DIR)/*.S $(TEST_TEMPLATE_DIR)/**/*.S)
COV_TEMPLATES     := $(wildcard $(COV_TEMPLATE_DIR)/*.txt $(COV_TEMPLATE_DIR)/**/*.txt)
TESTPLANS_DIR		  := testplans
TESTPLANS         := $(wildcard $(TESTPLANS_DIR)/*.csv $(TESTPLANS_DIR)/**/*.csv)

STAMP_DIR := $(WORKDIR)/stamps

# Check if UV is installed and set UV variable
UV := $(shell command -v uv 2> /dev/null)
ifneq ($(UV),)
		UV_RUN := $(UV) run
else
		UV_RUN :=
		$(warning "Warning: 'uv' command not found. Running scripts without UV, but there may be dependency issues.")
endif

.DEFAULT_GOAL := elfs

# Test compilation targets
.PHONY: elfs
elfs: generate_makefiles
	$(MAKE) -C $(WORKDIR) compile

.PHONY: generate_makefiles
generate_makefiles: # too many dependencies to track; always regenerate Makefile
	$(UV_RUN) act --config $(CONFIG_FILE) --workdir $(WORKDIR) --test-dir $(TESTDIR)

.PHONY: clean
clean:
	rm -rf $(WORKDIR)

# Test generation targets
.PHONY: covergroupgen
covergroupgen: $(STAMP_DIR)/covergroupgen.stamp
$(STAMP_DIR)/covergroupgen.stamp: generators/coverage/covergroupgen.py $(COV_TEMPLATES) $(TESTPLANS) | $(STAMP_DIR)
	$(UV_RUN) generators/coverage/covergroupgen.py
	touch $@

.PHONY: testgen
testgen:  $(STAMP_DIR)/testgen.stamp
$(STAMP_DIR)/testgen.stamp: $(STAMP_DIR)/covergroupgen.stamp generators/tests/testgen.py $(TEST_TEMPLATES) | $(STAMP_DIR)
	$(UV_RUN) generators/tests/testgen.py
	rm -rf $(SRCDIR64)/E $(SRCDIR32)/E
	touch $@

.PHONY: privheaders
privheaders: $(STAMP_DIR)/csrtests.stamp $(STAMP_DIR)/illegalinstrtests.stamp

$(STAMP_DIR)/csrtests.stamp: generators/tests/csrtests.py | $(PRIVHEADERSDIR) $(STAMP_DIR)
	$(UV_RUN) generators/tests/csrtests.py
	touch $@

$(STAMP_DIR)/illegalinstrtests.stamp: generators/tests/illegalinstrtests.py | $(PRIVHEADERSDIR) $(STAMP_DIR)
	$(UV_RUN) generators/tests/illegalinstrtests.py
	touch $@

.PHONY: tests
tests: testgen privheaders

.PHONY: clean-tests
clean-tests:
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVHEADERSDIR) $(PRIVDIR64) $(PRIVDIR32)
	rm -rf fcov/unpriv/*
	rm -rf $(STAMP_DIR)

$(PRIVHEADERSDIR) $(STAMP_DIR):
	mkdir -p $@

# TODO: Coverage targets
.PHONY: coverage
coverage: generate_makefiles
	$(MAKE) -C $(WORKDIR) coverage

# Dev targets
.PHONY: lint
lint:
	$(UV_RUN) ruff check

.PHONY: lint-fix
lint-fix:
	$(UV_RUN) ruff check --fix

.PHONY: format
format:
	$(UV_RUN) ruff format
