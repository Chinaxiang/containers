FROM ubuntu:16.04
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
	lsof

RUN apt-get clean

# Change Shell
SHELL ["/bin/bash", "-c"]