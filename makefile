PACKAGE_DIR := ahn_cli

.PHONY: install
install:
	uv sync --dev

.PHONY: update
update:
	uv sync --upgrade

.PHONY: lint
lint:
	uv run ruff check $(PACKAGE_DIR)

.PHONY: typos
typos:
	uv run typos $(PACKAGE_DIR)/**/*.py

.PHONY: format
format:
	uv run ruff format $(PACKAGE_DIR)

.PHONY: format-check
format-check:
	uv run ruff format --check $(PACKAGE_DIR)

.PHONY: fix
fix:
	uv run ruff check --fix $(PACKAGE_DIR)

.PHONY: test
test:
	uv run pytest

.PHONY: check
check: lint typos test format-check

.PHONY: run
run:
	uv run ahn_cli $(ARGS)
