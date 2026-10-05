#!/bin/bash
# Manual fallback for the GitHub Actions workflow: builds the same versions,
# read from the per-version Dockerfiles (3.x/Dockerfile).
set -euo pipefail

IMAGE_NAME=papaux/python-builder
DIRS=$(ls -d 3.*/)

for dir in $DIRS; do
    minor="${dir%/}"
    version=$(sed -n 's/^FROM python:\([0-9.]*\)-slim.*/\1/p' "$dir/Dockerfile")
    docker build --pull -t "$IMAGE_NAME:$version" -t "$IMAGE_NAME:$minor" "$dir"
done

for dir in $DIRS; do
    minor="${dir%/}"
    version=$(sed -n 's/^FROM python:\([0-9.]*\)-slim.*/\1/p' "$dir/Dockerfile")
    docker push "$IMAGE_NAME:$version"
    docker push "$IMAGE_NAME:$minor"
done
