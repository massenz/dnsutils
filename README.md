# Network tools for Containers

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

[![Release](https://github.com/massenz/dnsutils/actions/workflows/release.yaml/badge.svg)](https://github.com/massenz/dnsutils/actions/workflows/release.yaml)

Docker image with network utilites installed.
(derived from [`tutum/dnsutils`](https://hub.docker.com/r/tutum/dnsutils))

## Usage

This is useful when debugging services running in Docker or Kubernetes and which may not be reachable from your dev box, or where you need to confirm reachability from *within* Docker or the Kubernetes cluster.

You can confirm reachability and name resolution with something like:

    docker run massenz/dnsutils:$VERSION nslookup myservice

and test a server's response with:

    docker run -it massenz/dnsutils:$VERSION http myserver:8080/api/v1/example

## Using `curl` and other utilities

Use the image with the additional utilities installed:

    docker run massenz/dnsutils:$VERSION curl -fs http://google.com

`curl`, `wget`, `ping`, `http` and `nc` (netcat) are available, as well as `vim` if you need to edit files (e.g., to POST using the `@` notation).

## Build & Release

This container maintains its version in `manifest.json` and gets automatically built and pushed to Docker Hub upon a merge to the `release` branch using Github Actions (courtesy of the [Common Utilities](https://github.com/massenz/common-utils)).

