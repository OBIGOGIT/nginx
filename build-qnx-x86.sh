#!/bin/bash

if [ ! -f "${HOME}/qnx660/qnx660-env.sh" ]; then
  echo "Can not find ${HOME}/qnx660/qnx660-env.sh"
  exit 1
fi

source ~/qnx660/qnx660-env.sh

./configure --crossbuild=QNX:6.6.0:x86 --with-cc="qcc -V4.7.3,gcc_ntox86" --with-ld-opt="-lsocket -llogin" --without-http_rewrite_module

make -j8
