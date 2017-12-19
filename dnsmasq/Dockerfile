FROM alpine:3.7
ADD repositories /etc/apk/repositories
RUN apk --no-cache add openssh-client curl bash ttf-dejavu coreutils dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]