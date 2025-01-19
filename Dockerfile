FROM python:3.12-slim
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD . /app
WORKDIR /app
RUN uv sync --frozen

# If you had a fastapi app or something you'd then be able to do something like
# CMD ["uv", "run", "app:app"]