#!/bin/sh

set -e

export SYSLOG_VERSION=3.13.2
export DOWNLOAD_URL="https://github.com/balabit/syslog-ng/releases/download/syslog-ng-${SYSLOG_VERSION}/syslog-ng-${SYSLOG_VERSION}.tar.gz"

apk update
apk add python gcc flex bison glib pcre autoconf
apk add bash curl alpine-sdk pcre-dev

cd /tmp
curl -L "${DOWNLOAD_URL}" > "syslog-ng-${SYSLOG_VERSION}.tar.gz"
tar zxf "syslog-ng-${SYSLOG_VERSION}.tar.gz"
cd "syslog-ng-${SYSLOG_VERSION}"
./configure --prefix=/usr
make
make install
cd ..
rm -rf "syslog-ng-${SYSLOG_VERSION}" "syslog-ng-${SYSLOG_VERSION}.tar.gz"

apk del python curl alpine-sdk gcc flex bison glib pcre autoconf
rm -rf /var/cache/apk/*