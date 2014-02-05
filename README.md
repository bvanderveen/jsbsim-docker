# jsbsim-docker

A Docker container for [JSBSim](http://jsbsim.sourceforge.net/).

# How to

Clone and change into repository directory, then:

    $ docker build -t="jsbsim" .
    $ docker run <args>`

Refer to the [JSBSim documentation](http://jsbsim.sourceforge.net/documentation.html) for usage details.

# Notes

The latest source of JSBSim (1.0.rc2) is included in the repository as a tarball.

A `Vagrantfile` to bootstrap Docker is provided. 