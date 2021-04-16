FROM python:3.7-slim

RUN apt update \
    && apt install -y docker \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
