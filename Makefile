.PHONY: clean

.PHONY: default
default: test

.PHONY: test
test:
	@echo noop

.PHONY: install-hooks
install-hooks:
	pre-commit install --install-hooks

.PHONY: check
check:
	pre-commit run --all-files

.PHONY: all
all: test check
