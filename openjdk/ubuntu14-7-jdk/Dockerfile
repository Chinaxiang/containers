FROM ubuntu:14.04
MAINTAINER huangyanxiang

RUN apt-get update
RUN apt-get -y install \
  bash \
  vim \
  net-tools \
  inetutils-ping \
  inetutils-telnet \
  inetutils-tools \
  dnsutils \
  tcpdump \
  dstat \
  sysstat \
  curl \
  lsof \
  openjdk-7-jdk

RUN apt-get clean

# Change Shell
SHELL ["/bin/bash", "-c"]