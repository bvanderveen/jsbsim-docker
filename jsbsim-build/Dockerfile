FROM ubuntu:14.10
MAINTAINER Benjamin van der Veen <b@bvanderveen.com>

RUN apt-get update
RUN apt-get install -y build-essential libtool autoconf automake cmake

RUN mkdir -p /opt/src
RUN mkdir -p /opt/build
WORKDIR /opt/src

