venv:
	uv sync --extra dev

lint:
	uv run ruff check --fix
	uv run ruff format

test:
	uv run pytest

run:
	uv run python main.py

mlflow:
	uv run mlflow ui \
	--backend-store-uri sqlite:///data/mlflow.db \
	--port 5000
