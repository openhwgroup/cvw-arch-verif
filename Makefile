# Jordan Carlin jcarlin@hmc.edu
# Sept 10, 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

# Directories and files
CONFIG_FILE ?= cvw_config.yaml

TESTDIR        := tests
SRCDIR64       := $(TESTDIR)/rv64
SRCDIR32       := $(TESTDIR)/rv32
PRIVDIR        := $(TESTDIR)/priv
PRIVHEADERSDIR := $(PRIVDIR)/headers
PRIVDIR64      := $(PRIVDIR)/rv64
PRIVDIR32      := $(PRIVDIR)/rv32

TEMPLATEDIR       := templates
TEST_TEMPLATE_DIR := $(TEMPLATEDIR)/testgen
COV_TEMPLATE_DIR  := $(TEMPLATEDIR)/coverage
TEST_TEMPLATES    := $(wildcard $(TEST_TEMPLATE_DIR)/*.S $(TEST_TEMPLATE_DIR)/**/*.S)
COV_TEMPLATES     := $(wildcard $(COV_TEMPLATE_DIR)/*.txt $(COV_TEMPLATE_DIR)/**/*.txt)

STAMP_DIR := stamps

debug:
# 	@echo "TEST_TEMPLATES: $(TEST_TEMPLATES)"
	@echo "COV_TEMPLATES: $(COV_TEMPLATES)"

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
elfs: generated_makefile.mk
	$(MAKE) -f generated_makefile.mk compile

generated_makefile.mk:
	$(UV_RUN) makefile_gen $(TESTDIR) $(CONFIG_FILE)

.PHONY: clean
clean:
	$(MAKE) -f generated_makefile.mk clean || true
	rm -f generated_makefile.mk

# Test generation targets
.PHONY: covergroupgen
covergroupgen: $(STAMP_DIR)/covergroupgen.stamp
$(STAMP_DIR)/covergroupgen.stamp: bin/covergroupgen.py $(COV_TEMPLATES) | $(STAMP_DIR)
	$(UV_RUN) bin/covergroupgen.py
	touch $@

.PHONY: testgen
testgen:  $(STAMP_DIR)/testgen.stamp
$(STAMP_DIR)/testgen.stamp: $(STAMP_DIR)/covergroupgen.stamp bin/testgen.py $(TEST_TEMPLATES) | $(STAMP_DIR)
	$(UV_RUN) bin/testgen.py
	touch $@

.PHONY: privheaders
privheaders: $(STAMP_DIR)/csrtests.stamp $(STAMP_DIR)/illegalinstrtests.stamp

$(STAMP_DIR)/csrtests.stamp: bin/csrtests.py | $(PRIVHEADERSDIR) $(STAMP_DIR)
	$(UV_RUN) bin/csrtests.py
	touch $@

$(STAMP_DIR)/illegalinstrtests.stamp: bin/illegalinstrtests.py | $(PRIVHEADERSDIR) $(STAMP_DIR)
	$(UV_RUN) bin/illegalinstrtests.py
	touch $@

.PHONY: tests
tests: testgen privheaders

.PHONY: clean-tests
clean-tests:
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVHEADERSDIR) $(PRIVDIR64) $(PRIVDIR32)
	rm -rf fcov/unpriv/*
	rm -f $(STAMP_DIR)/*

$(PRIVHEADERSDIR) $(STAMP_DIR):
	mkdir -p $@

# TODO: Coverage targets

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
