#!/bin/bash

# Build all images
docker build -t papaux/python-builder:3.8 --build-arg PYTHON_VERSION=3.8 .
docker build -t papaux/python-builder:3.9 --build-arg PYTHON_VERSION=3.9 .
docker build -t papaux/python-builder:3.10 --build-arg PYTHON_VERSION=3.10 .
docker build -t papaux/python-builder:3.11 --build-arg PYTHON_VERSION=3.11 .
docker build -t papaux/python-builder:3.12 --build-arg PYTHON_VERSION=3.12 .

# Push all images
docker push papaux/python-builder:3.8
docker push papaux/python-builder:3.9
docker push papaux/python-builder:3.10
docker push papaux/python-builder:3.12
docker push papaux/python-builder:3.11


