# docker-dnsutils

Docker image with dnsutils installed


## Usage

	docker run -it tutum/dnsutils nslookup tutum.co

	docker run -it tutum/dnsutils dig tutum.co

## Using `curl` and other utilities

Use the image with the additional utilities installed:

    docker run massenz/dnsutils:1.1 curl -fs http://google.com

`curl`, `wget`, `ping` and `nc` (netcat) are available.
