# nginx-qnx
A port of nginx-1.8.0 on QNX 6.6


## Cross building for QNX (x86 only)

#### Prerequisite

QNX SDP 6.6 should be installed properly and `qnx660-env.sh` has to be sourced into your shell.

    $ source <your-qnx660-path>/qnx660-env.sh

#### Configuration

At least, the following parameters have to be given to the `configure` command.

- --crossbuild=QNX
- --with-cc="qcc -V4.7.3,gcc_ntox86"
- --with-ld-opt="-lsocket -llogin"

Example of parameters usage (all of this needs to be typed in one line):

    ./configure
        --crossbuild=QNX
        --with-cc="qcc -V4.7.3,gcc_ntox86"
        --with-ld-opt="-lsocket -llogin"

#### Building

After configuration, nginx is cross-compiled using `make`.
