FROM ubuntu:13.10
MAINTAINER Benjamin van der Veen <b@bvanderveen.com>

RUN apt-get update
RUN apt-get install -y build-essential libtool autoconf automake

ADD ./JSBSim-1.0.rc2.tar.gz /home/docker/
ADD ./install-jsbsim.sh /home/docker/JSBSim-1.0

WORKDIR /home/docker/JSBSim-1.0
RUN ./install-jsbsim.sh

EXPOSE 4000
VOLUME ["/var/jsbsim"]

CMD ["/opt/JSBSim-1.0/bin/JSBSim"]