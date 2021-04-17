ARG DOCKER_TAG
FROM python:${DOCKER_TAG}-slim

RUN apt-get update \
    && apt-get install -y docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
