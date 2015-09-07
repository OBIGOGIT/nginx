#!/bin/bash

if [ "x${QNX_TARGET}" == "x" ]; then
  if [ ! -f "${HOME}/qnx660/qnx660-env.sh" ]; then
    echo "Can not find ${HOME}/qnx660/qnx660-env.sh"
    exit 1
  fi
  source ~/qnx660/qnx660-env.sh
fi

./configure --crossbuild=QNX:6.6.0:arm --with-cc="qcc -V4.7.3,gcc_ntoarmv7le" --with-ld-opt="-lsocket -llogin" --without-http_rewrite_module

make -j8
