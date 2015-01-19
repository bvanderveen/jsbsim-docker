#!/bin/bash

docker build -t jsbsim-build jsbsim-build
docker run --rm -v $(pwd)/sim:/opt/src -v $(pwd)/jsbsim-output:/opt/jsbsim -v $(pwd)/jsbsim-binary:/opt/build jsbsim-build ./build.sh