FROM alpine:3.7
MAINTAINER Chinaxiang

RUN apk update
RUN apk add \
    ca-certificates \
    bash \
    supervisor \
    curl \
    syslog-ng \
    dbus

RUN set -ex; \
  apkArch="$(apk --print-arch)"; \
  case "$apkArch" in \
    armhf) arch='arm' ;; \
    aarch64) arch='arm64' ;; \
    x86_64) arch='amd64' ;; \
    *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; \
  esac; \
  apk add --no-cache --virtual .fetch-deps libressl; \
  wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; \
  apk del .fetch-deps; \
  chmod +x /usr/local/bin/traefik

RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /
COPY supervisord.conf /etc/
COPY syslog-ng.conf /etc/syslog-ng/
RUN chmod +x /entrypoint.sh

# Allow redirection of stdout to docker logs
RUN ln -sf /proc/1/fd/1 /var/log/docker.log

EXPOSE 80 
EXPOSE 514/tcp 514/udp 601/tcp 

# Change Shell
SHELL ["/bin/bash", "-c"]

# Set the entry point
ENTRYPOINT /entrypoint.sh