#!/bin/bash

./build-jsbsim.sh

cd /opt/build
ls -al /opt/jsbsim

cmake /opt/src
make