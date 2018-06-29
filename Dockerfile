# DNS Utilities augmented with curl.
#
# Derived from tutum/dnsutils and autmented with
# various networking utilities.

FROM ubuntu:bionic
MAINTAINER Marco Massenzio (marco@alertavert.com)


RUN apt-get update && \
    apt-get install -yq dnsutils curl iputils-ping wget netcat && \
    apt-get clean && rm -rf /var/lib/apt/lists
