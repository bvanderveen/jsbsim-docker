#!/bin/bash

./build-jsbsim.sh

cd /opt/build

echo "building wrapper"
cmake /opt/src
make
