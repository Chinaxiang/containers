FROM alpine:3.7
MAINTAINER Chinaxiang

COPY repositories /etc/apk/repositories
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
    perl-net-telnet \
    dbus

RUN rm -rf /var/cache/apk/*

# Change Shell
SHELL ["/bin/bash", "-c"]

ENTRYPOINT ["sleep", "86400"]