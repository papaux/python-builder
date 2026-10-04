#!/bin/bash

# Build all images
docker build -t papaux/python-builder:3.11 --build-arg PYTHON_VERSION=3.11 .
docker build -t papaux/python-builder:3.12 --build-arg PYTHON_VERSION=3.12 .
docker build -t papaux/python-builder:3.13 --build-arg PYTHON_VERSION=3.13 .
docker build -t papaux/python-builder:3.14 --build-arg PYTHON_VERSION=3.14 .

# Push all images
docker push papaux/python-builder:3.11
docker push papaux/python-builder:3.12
docker push papaux/python-builder:3.13
docker push papaux/python-builder:3.14



