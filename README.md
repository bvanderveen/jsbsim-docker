# jsbsim-docker

This is a wrapper for [JSBSim](http://jsbsim.sourceforge.net/) that allows for faster-than-realtime simulation. 

JSBSim is an open source implemenation of a flight dynamics model. It is the default flight dynamics model for [FlightGear](http://www.flightgear.org/), an open source flight simulator.

# Hacking

Depends on Docker for the build. On OS X I'm using `boot2docker`.

Change into repository directory and:

	$ ./build.sh

This will compile JSBSim, followed by the wrapper, within a Docker container. The build output ends up in `./jsbsim

Run the wrapper with:

    $ ./run.sh

This will run the simulator process in a Docker container.

# Notes

The latest source of JSBSim (1.0.rc2) is included in the repository as a tarball.