FROM python:3.11.17-slim

RUN apt-get update \
    && apt-get install -y docker.io poppler-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
