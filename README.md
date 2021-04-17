# python-builder

A builder docker image based on official python images, adding tools like docker for CI builds.

## Build locally

```
docker build --build-args PYTHON_VERSION=3.7 .
```

## Download from docker hub

This image is published in [hub.docker.com](https://hub.docker.com/r/papaux/python-builder).

## Build hook

Instead of providing one Dockerfile per version, this image relies on the configured docker tag
to fetch the corresponding python version.

Documentation about build hooks is really hard to find, especially what is the default build command.

These links can be useful to understand:
- [What is a build hook](https://docs.docker.com/docker-hub/builds/advanced/#override-build-test-or-push-commands)
- [Example of a build hook](https://github.com/SamueleA/docker-hub-auto-build-tutorial/blob/ec2743d606bf290f6707547c8c1439d20bdf2298/hooks/build#L1)
- [Environment Variables](https://docs.docker.com/docker-hub/builds/advanced/#custom-build-phase-hooks)

