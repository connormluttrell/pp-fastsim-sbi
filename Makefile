SHELL := bash
ENV_NAME := pp-fastsim-sbi

.PHONY: env lint format test container

env:
	@echo "Creating/updating conda env $(ENV_NAME)"
	conda env update -n $(ENV_NAME) -f environment.yml --prune || conda env create -f environment.yml

lint:
	ruff check .
	black --check .

format:
	black .
	ruff check . --fix

test:
	pytest -q

container:
	@if command -v apptainer >/dev/null 2>&1; then \
		mkdir -p artifacts; \
		apptainer build artifacts/pp-fastsim-sbi.sif Containerfile; \
		echo "Built artifacts/pp-fastsim-sbi.sif"; \
	else \
		echo "apptainer not found; skipping container build."; \
	fi
