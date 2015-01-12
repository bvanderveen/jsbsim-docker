#!/bin/bash

set -xe

cd /opt/JSBSim-1.0

# build 
./autogen.sh
./configure --enable-libraries --enable-shared --prefix=/opt/jsbsim
make -j 5
make install

# copy the main executable to the install dir
mkdir /opt/jsbsim/bin
cp src/JSBSim /opt/jsbsim/bin/JSBSim

# copy the bundled scripts into the install dir
cp -r aircraft /opt/jsbsim
cp -r engine /opt/jsbsim
cp -r scripts /opt/jsbsim
cp -r systems /opt/jsbsim