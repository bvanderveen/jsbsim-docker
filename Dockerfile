FROM ubuntu:14.10
MAINTAINER Benjamin van der Veen <b@bvanderveen.com>

RUN apt-get update
RUN apt-get install -y build-essential libtool autoconf automake

ADD ./JSBSim-1.0.rc2.tar.gz /opt/
ADD ./install-jsbsim.sh /opt/JSBSim-1.0/

WORKDIR /opt/JSBSim-1.0/

RUN ./install-jsbsim.sh