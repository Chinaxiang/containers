FROM alpine:3.7
MAINTAINER Chinaxiang

RUN apk --update add --no-cache syslog-ng && rm -rf /var/cache/apk/*

VOLUME ["/var/log", "/etc/syslog-ng"]

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]