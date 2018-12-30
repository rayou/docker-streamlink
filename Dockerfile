FROM python:3.7.2-alpine3.8 as base
RUN apk update && apk add --no-cache ffmpeg

FROM base as builder
ARG VERSION
RUN apk add --no-cache --virtual .build-deps gcc musl-dev
RUN pip wheel --wheel-dir=/root/wheels streamlink==$VERSION
RUN apk del .build-deps gcc musl-dev

FROM base

COPY --from=builder /root/wheels /root/wheels
RUN pip install --no-index --find-links=/root/wheels streamlink

ENTRYPOINT ["/usr/local/bin/streamlink"]
