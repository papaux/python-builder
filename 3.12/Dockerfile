FROM python:3.12.14-slim

RUN apt-get update \
    && apt-get install -y docker.io poppler-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
