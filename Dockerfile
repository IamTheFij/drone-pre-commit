FROM python:3-alpine

RUN apk add --no-cache git~=2

ARG PRE_COMMIT_VERSION=4.5.0

RUN mkdir -p /data/pre-commit-cache
ENV PRE_COMMIT_HOME=/data/pre-commit-cache

RUN pip install --no-cache-dir pre-commit==${PRE_COMMIT_VERSION}

CMD ["pre-commit", "run", "--all-files"]
