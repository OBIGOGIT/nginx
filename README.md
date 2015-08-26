# nginx
A cross-compilation of nginx-1.8.0 for QNX 6.6/x86 and Linux/arm


#### Prerequisite

- QNX SDP 6.6
- gcc-arm-linux-gnueabi or gcc-arm-linux-gnueabihf

#### Building for QNX / x86

1. Source `qnx660-env.sh` into your shell.

    $ source <your-qnx660-path>/qnx660-env.sh

2. Run `configure` with the following parameters (you can add more parameters as you need):

    - --crossbuild=QNX:6.6.0:x86
    - --with-cc="qcc -V4.7.3,gcc_ntox86"
    - --with-ld-opt="-lsocket -llogin"

 For example (all of this needs to be typed in one line):

    $ ./configure --crossbuild=QNX:6.6.0:x86 --with-cc="qcc -V4.7.3,gcc_ntox86" --with-ld-opt="-lsocket -llogin"

3. Run make

    $ make

#### Building for Linux / arm

1. Source `qnx660-env.sh` into your shell.

    $ source <your-qnx660-path>/qnx660-env.sh

2. Run `configure` with the following parameters (you can add more parameters as you need):

    - --crossbuild=Linux::arm
    - --with-cc="arm-linux-gnueabihf-gcc"
    - --with-ld-opt="-L/usr/arm-linux-gnueabihf/lib"
    - --with-cc-opt="-L/usr/arm-linux-gnueabihf/include"

 For example (in case you installed arm-linux-gnueabihf):
in case you installed arm-linux-gnueabihf

  $ ./configure --crossbuild=Linux::arm --with-cc="arm-linux-gnueabihf-gcc" --with-ld-opt="-L/usr/arm-linux-gnueabihf/lib" --with-cc-opt="-L/usr/arm-linux-gnueabihf/include"

3. Run make

    $ make
