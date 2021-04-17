ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim

RUN apt-get update \
    && apt-get install -y docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
