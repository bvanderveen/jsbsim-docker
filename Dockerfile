FROM ubuntu:13.10
MAINTAINER Benjamin van der Veen <b@bvanderveen.com>

RUN apt-get update
RUN apt-get install -y build-essential libtool autoconf automake

ADD ./install-jsbsim.sh /home/docker/
ADD ./JSBSim-1.0.rc2.tar.gz /home/docker/

WORKDIR /home/docker
RUN /home/docker/install-jsbsim.sh

EXPOSE 4000
VOLUME ["/var/jsbsim"]

CMD ["/opt/JSBSim-1.0/bin/JSBSim"]