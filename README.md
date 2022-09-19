# Network tools for Containers

![Version](https://img.shields.io/badge/Version-2.2.0-blue)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![OS Debian](https://img.shields.io/badge/OS-Debian-green)


Docker image with network utilites installed.
(derived from [`tutum/dnsutils`](https://hub.docker.com/r/tutum/dnsutils))


## Usage

This is useful when debugging services running in Docker or Kubernetes and which may not be reachable from your dev box, or where you need to confirm reachability from *within* Docker or the Kubernetes cluster.

You can confirm reachability and name resolution with something like:

    docker run -it massenz/dnsutils:$VERSION nslookup myservice

and test a server's response with:

    docker run -it massenz/dnsutils:$VERSION http myserver:8080/api/v1/example

## Using `curl` and other utilities

Use the image with the additional utilities installed:

    docker run massenz/dnsutils:$VERSION curl -fs http://google.com

`curl`, `wget`, `ping`, `http` and `nc` (netcat) are available.
