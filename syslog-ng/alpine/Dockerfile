FROM alpine:3.7
MAINTAINER Chinaxiang

RUN apk add --update syslog-ng && rm -rf /var/cache/apk/*

EXPOSE 514/tcp 514/udp

VOLUME ["/var/log"]

CMD ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]