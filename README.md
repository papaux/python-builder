# python-builder

A builder docker image based on official python images, adding tools like docker for CI builds.

## Available tags

One image is built per supported Python minor version, tracking the upstream
[`python:<version>-slim`](https://hub.docker.com/_/python) images. Each build is pushed with two tags:

- the full version, e.g. `papaux/python-builder:3.14.8`
- the minor version, e.g. `papaux/python-builder:3.14` (always the latest patch)

Each minor version has its own Dockerfile (`3.11/Dockerfile`, `3.12/Dockerfile`, ...) whose
`FROM python:<version>-slim` line is the source of truth for the version.

## Build locally

```
docker build -t python-builder 3.14
```

To build every version by hand, run `./build-and-publish.sh`.

## Download from docker hub

This image is published in [hub.docker.com](https://hub.docker.com/r/papaux/python-builder).
