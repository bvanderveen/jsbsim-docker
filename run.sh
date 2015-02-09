#!/bin/bash

docker build -t jsbsim-run docker/run
docker run --rm \
    -v $(pwd)/sim:/opt/src \
    -v $(pwd)/build:/opt/build \
    -v $(pwd)/build-output:/opt/jsbsim \
    jsbsim-run \
	/opt/build/head/head /opt/src/JSBSim-1.0/scripts/cannonball.xml