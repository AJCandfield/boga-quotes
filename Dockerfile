# =============================================================================
# Docker Hub: https://hub.docker.com/_/python/tags?page=&page_size=&ordering=&name=12
# =============================================================================

FROM python:3.12 as requirements

WORKDIR /tmp

RUN pip install --no-cache-dir poetry==1.8.3

COPY ./pyproject.toml .poetry.lock* /tmp/

RUN poetry export -f requirements.txt --output requirements.txt --without-hashes --without=dev

# =============================================================================

FROM python:3.12

WORKDIR /code

COPY --from=requirements /tmp/requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./boga_quotes /code/boga_quotes

CMD ["fastapi", "run", "boga_quotes/main.py", "--port", "80"]
