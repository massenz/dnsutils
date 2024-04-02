# DNS Utilities augmented with curl.
#
# Derived from tutum/dnsutils and augmented with
# various networking utilities.

FROM debian:stable-20240311-slim
LABEL org.opencontainers.image.authors="Marco Massenzio (marco@alertavert.com)"

RUN apt update && \
    apt install -yq curl dnsutils httpie iputils-ping netcat-openbsd net-tools vim wget && \
    apt clean && \
    rm -rf /var/lib/apt/lists

CMD ["sleep", "infinity"]
