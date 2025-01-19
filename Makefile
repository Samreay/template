install:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	uv python install
	uv sync
	uv run pre-commit install
	uv run pre-commit autoupdate

precommit:
	uv run pre-commit run --all-files

docker:
	docker build -t a_package .devcontainer