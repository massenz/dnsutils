# DNS Utilities augmented with curl.
#
# Derived from tutum/dnsutils and augmented with
# various networking utilities.

FROM debian:stable-slim
LABEL org.opencontainers.image.authors="Marco Massenzio (marco@alertavert.com)"

RUN apt update && \
    apt install -yq dnsutils curl iputils-ping wget \
        netcat httpie net-tools && \
    apt clean && rm -rf /var/lib/apt/lists
