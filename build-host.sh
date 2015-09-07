#!/bin/bash

./configure --without-http_rewrite_module --without-http_gzip_module

make -j8
