FROM python:3.8-slim

RUN apt-get update \
    && apt-get install -y docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
