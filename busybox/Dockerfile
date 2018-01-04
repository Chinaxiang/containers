FROM alpine:3.7
MAINTAINER Chinaxiang

RUN apk update
RUN apk add \
    bash \
    curl \
    wget \
    openssh-client \
    python \
    py-pip \
    apache2 \
    apache2-utils \
    apk-tools \
    telnet \
    dbus

RUN rm -rf /var/cache/apk/*

# Change Shell
SHELL ["/bin/bash", "-c"]

ENTRYPOINT ["sleep", "86400"]