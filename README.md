# python-builder

**note**: build is not automated anymore, thanks to docker hub removing automation for free account.

A builder docker image based on official python images, adding tools like docker for CI builds.

## Build locally

```
docker build -t python-builder --build-arg PYTHON_VERSION=3.7 .
```

## Download from docker hub

This image is published in [hub.docker.com](https://hub.docker.com/r/papaux/python-builder).

## Docker Hub build hook

Instead of providing one Dockerfile per version, this image relies on the configured docker tag
to fetch the corresponding python version.

It will basically pick whatever "Docker Tag" is configured from the Build Rules. For instance:

![example-docker-hub-docker-tag](https://gist.githubusercontent.com/papaux/101c5efb2cc124ab594465572f43ac33/raw/31fb9105e45d983ff91113c8003e051a22e4620c/docker-hub-build-rules.png)


Documentation about build hooks is really hard to find, especially what is the default build command.

These links can be useful to understand:
- [What is a build hook](https://docs.docker.com/docker-hub/builds/advanced/#override-build-test-or-push-commands)
- [Example of a build hook](https://github.com/SamueleA/docker-hub-auto-build-tutorial/blob/ec2743d606bf290f6707547c8c1439d20bdf2298/hooks/build#L1)
- [Environment Variables](https://docs.docker.com/docker-hub/builds/advanced/#custom-build-phase-hooks)

