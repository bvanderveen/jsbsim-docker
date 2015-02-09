#!/bin/bash

docker build -t jsbsim-build docker/build
docker run --rm \
    -v $(pwd)/sim:/opt/src \
    -v $(pwd)/build:/opt/build \
    -v $(pwd)/build-output:/opt/jsbsim \
    jsbsim-build \
    ./build.sh
