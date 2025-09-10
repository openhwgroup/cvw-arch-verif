# Jordan Carlin jcarlin@hmc.edu
# Sept 10, 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

# Directories
TESTDIR        := tests
SRCDIR64       := $(TESTDIR)/rv64
SRCDIR32       := $(TESTDIR)/rv32
PRIVDIR        := $(TESTDIR)/priv
PRIVHEADERSDIR := $(PRIVDIR)/headers
PRIVDIR64      := $(PRIVDIR)/rv64
PRIVDIR32      := $(PRIVDIR)/rv32
CONFIG_FILE	   := cvw_config.yaml

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
covergroupgen:
	$(UV_RUN) bin/covergroupgen.py

.PHONY: testgen
testgen: covergroupgen
	$(UV_RUN) bin/testgen.py

.PHONY: privheaders
privheaders: bin/csrtests.py bin/illegalinstrtests.py
	mkdir -p $(PRIVHEADERSDIR)
	$(UV_RUN) bin/csrtests.py
	$(UV_RUN) bin/illegalinstrtests.py

.PHONY: clean-tests
clean-tests:
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVHEADERSDIR) $(PRIVDIR64) $(PRIVDIR32)
	rm -rf fcov/unpriv/*

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
