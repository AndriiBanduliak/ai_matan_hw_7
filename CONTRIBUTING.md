# Contributing

Thanks for your interest in improving this project!

## Getting started
- Fork the repo and create a feature branch from `main`.
- Create and activate a virtual environment.
- Install dependencies:
  - `pip install -r requirements.txt`
  - `pip install -r requirements-dev.txt`
- Install pre-commit hooks: `pre-commit install`

## Development workflow
- Format: `black .` and `isort .`
- Lint: `ruff .`
- Lint notebooks: `nbqa black --check notebooks` and `nbqa ruff notebooks`
- Run notebook (CI does this): `jupyter nbconvert --to notebook --execute --inplace notebooks/HW_7.ipynb --ExecutePreprocessor.timeout=600`

## Pull requests
- Keep PRs focused and small; include a clear description and context.
- Add/update documentation (README) as needed.
- Ensure CI passes.

## Commit messages
- Follow Conventional Commits where possible, e.g. `feat: add new test case`.

## Code of Conduct
By participating, you agree to abide by the [Code of Conduct](CODE_OF_CONDUCT.md).
