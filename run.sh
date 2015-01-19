#!/bin/bash

 docker run --rm -v $(pwd)/sim:/opt/src -v $(pwd)/jsbsim-output:/opt/jsbsim -v $(pwd)/jsbsim-binary:/opt/build jsbsim-build /opt/build/head/head /opt/src/JSBSim-1.0/scripts/cannonball.xml
