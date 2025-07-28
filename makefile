PACKAGE_DIR := ahn_cli

.PHONY: install
install:
	uv sync --dev

.PHONY: update
update:
	uv sync --upgrade

.PHONY: lint
lint:
	uv run flake8 $(PACKAGE_DIR)

.PHONY: type
type:
	uv run mypy $(PACKAGE_DIR)/**/*.py

.PHONY: format
format:
	uv run black $(PACKAGE_DIR)/**/*.py

.PHONY: sort
sort:
	uv run isort $(PACKAGE_DIR)/**/*.py

.PHONY: test
test:
	uv run pytest

.PHONY: check
check: lint type test format sort

.PHONY: run
run:
	uv run ahn_cli $(ARGS)
