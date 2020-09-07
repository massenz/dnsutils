# Network tools for Containers

![Version](https://img.shields.io/badge/Version-2.0.0-blue)
![Released](https://img.shields.io/badge/Released-2020.09.06-green)

[![Author](https://img.shields.io/badge/Author-M.%20Massenzio-green)](https://bitbucket.org/marco)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![OS Debian](https://img.shields.io/badge/OS-Debian-green)


Docker image with network utilites installed.
(derived from [`tutum/dnsutils`](https://hub.docker.com/r/tutum/dnsutils))


## Usage

    docker run -it massenz/dnsutils:$VERSION nslookup bitbucket.org

    docker run -it massenz/dnsutils:$VERSION dig tutum.co

## Using `curl` and other utilities

Use the image with the additional utilities installed:

    docker run massenz/dnsutils:$VERSION curl -fs http://google.com

`curl`, `wget`, `ping`, `http` and `nc` (netcat) are available.
