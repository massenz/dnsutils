# DNS Utilities augmented with curl.

FROM ubuntu:bionic
MAINTAINER Marco Massenzio (marco@alertavert.com)


RUN apt-get update && apt-get install -yq dnsutils curl && \
    apt-get clean && rm -rf /var/lib/apt/lists
