#!/bin/bash

autoreconf -fi
LDFLAGS=-L/usr/local/guacamole/lib ./configure
C_INCLUDE_PATH=/usr/local/guacamole/include make
make install
ldconfig

