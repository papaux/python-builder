FROM python:3.7-slim

RUN apt-get update \
    && apt-get install -y docker \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
