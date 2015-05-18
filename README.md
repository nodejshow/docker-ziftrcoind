# docker-ziftrcoind
A Dockerized Ziftrcoin instance for development and testing purposes.

## Installation

Install Docker on Linux, OS X or Windows. Read "[Getting started](https://www.docker.io/gettingstarted/)" with Docker.

```
$ git clone http://github.com/nodejshow/docker-ziftrcoind.git
$ cd docker-ziftrcoind
$ sudo docker build -t ziftrcoind .
```

## Usage

* Edit your ziftrcoin.conf to suit your needs.
* Port 10332 is exposed for the JSON-RPC interface.

```bash
$ sudo docker run -p 10332:10332 -d ziftrcoind