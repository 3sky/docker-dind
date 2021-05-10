FROM docker:20.10
MAINTAINER 3sky <kuba@3sky.dev>
ENV PACK_VERSION=0.18.1

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing trivy \
    && apk update \
    && apk add trivy curl tar

RUN curl -sSL "https://github.com/buildpacks/pack/releases/download/v${PACK_VERSION}/pack-v${PACK_VERSION}-linux.tgz" | tar -C /usr/local/bin/ --no-same-owner -xzv pack
