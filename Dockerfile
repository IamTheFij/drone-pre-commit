FROM python:3

RUN mkdir -p /data/pre-commit-cache
ENV PRE_COMMIT_HOME=/data/pre-commit-cache

RUN pip install pre-commit==2.10.0

CMD ["pre-commit", "run", "--all-files"]
