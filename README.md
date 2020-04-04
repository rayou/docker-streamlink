[github]: https://github.com/rayou/docker-streamlink
[app-github]: https://github.com/streamlink/streamlink
[dockerstore]: https://hub.docker.com/r/rayou/streamlink
[donation]: https://donorbox.org/rayou?amount=10

# docker-streamlink
[![](https://img.shields.io/docker/image-size/rayou/streamlink?sort=semver)][dockerstore] [![](https://img.shields.io/docker/v/rayou/streamlink?sort=semver)][dockerstore] [![](https://img.shields.io/docker/stars/rayou/streamlink.svg)][dockerstore] [![](https://img.shields.io/badge/Donate-Donorbox-green.svg)][donation]

Docker image of [streamlink][app-github].

Repository name in Docker Hub: [rayou/streamlink][dockerstore]

Repository name in Github: [rayou/docker-streamlink][github]

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

# Documentation
- https://streamlink.github.io/#user-guide

# Contributing

PRs are welcome.

# Author

Ray Ou - yuhung.ou@live.com

# Donation

[![](https://d1iczxrky3cnb2.cloudfront.net/button-small-green.png)][donation]

# License

MIT.