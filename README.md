# jsbsim-docker

This is a Docker container for [JSBSim](http://jsbsim.sourceforge.net/). 

JSBSim is an open source implemenation of a flight dynamics model. It is the default flight dynamics model for [FlightGear](http://www.flightgear.org/), an open source flight simulator.



# How to use

Change into repository directory and:

    $ docker build -t="jsbsim" .
    $ docker run -v .:/var/jsbsim <args>

Refer to the [JSBSim documentation](http://jsbsim.sourceforge.net/documentation.html) for usage details. Simulation output files will be written  into `/var/jsbsim` in the container (current directory on the host). 

# Notes

The latest source of JSBSim (1.0.rc2) is included in the repository as a tarball.

A `Vagrantfile` to bootstrap Docker is provided. 