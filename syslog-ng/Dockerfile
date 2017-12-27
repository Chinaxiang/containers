FROM alpine:3.7
MAINTAINER Chinaxiang

ADD ./build.sh /build.sh
RUN chmod +x /build.sh && /build.sh

VOLUME ["/var/log", "/etc/syslog-ng"]

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]