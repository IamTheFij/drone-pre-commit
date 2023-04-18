FROM python:3

RUN mkdir -p /data/pre-commit-cache
ENV PRE_COMMIT_HOME=/data/pre-commit-cache

RUN pip install --no-cache-dir pre-commit==3.2.2

CMD ["pre-commit", "run", "--all-files"]
