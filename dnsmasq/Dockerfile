FROM alpine:3.7
RUN apk update
RUN apk --no-cache add openssh-client curl unzip bash ttf-dejavu coreutils dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k", "--cap-add=NET_ADMIN"]