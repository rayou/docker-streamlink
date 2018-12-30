# docker-streamlink
Docker image of [streamlink](https://github.com/streamlink/streamlink).

Repository name in Docker Hub: [rayou/streamlink](https://hub.docker.com/r/rayou/streamlink)

# Build
```bash
$ docker build --build-arg VERSION=$STREAMLINK_VERSION -t streamlink .
# docker build --build-arg VERSION=0.14.2 -t streamlink .
```

# Usage

### Run `streamlink` directly
```bash
$ docker run --rm -it rayou/streamlink:latest --help
```

### Run shell
```bash
$ docker run --rm -it --entrypoint=/bin/sh rayou/streamlink:latest
```
