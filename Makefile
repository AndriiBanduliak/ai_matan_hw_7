.PHONY: install dev-install format lint lint-nb run-nb test-nb ci

install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt

dev-install: install
	pip install -r requirements-dev.txt
	pre-commit install

format:
	black .
	isort .

lint:
	black --check .
	isort --check-only .
	ruff .

lint-nb:
	nbqa black --check notebooks || true
	nbqa ruff notebooks || true

run-nb:
	jupyter nbconvert --to notebook --execute --inplace notebooks/HW_7.ipynb --ExecutePreprocessor.timeout=600

test-nb: run-nb

ci: lint lint-nb test-nb
