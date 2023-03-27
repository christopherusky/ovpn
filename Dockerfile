# Smallest up to date alpine base image
FROM alpine:3.17
# Install needed packages
RUN apk update && apk add --no-cache openssl easy-rsa openvpn iptables bash && rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
# Configure tun
RUN mkdir -p /dev/net && mknod /dev/net/tun c 10 200
