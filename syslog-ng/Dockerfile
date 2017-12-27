FROM alpine:3.2
MAINTAINER Chinaxiang

RUN apk --update add --no-cache \
    bash \
    dbus \

ADD ./build.sh /build.sh
RUN chmod +x /build.sh && /build.sh

ADD ./syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

VOLUME ["/var/log/syslog-ng", "/var/run/syslog-ng", "/etc/syslog-ng"]

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]