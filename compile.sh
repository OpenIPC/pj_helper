#!/bin/bash

TARGET_HOST="arm-hisiv500-linux"
TARGET_BUILD="x86_64-linux-gnu"

sudo apt-get install autoconf autogen libtool

cd opus && ./autogen.sh && ./configure --prefix=$(pwd)/../hisilicon_deps/opus/ --build=${TARGET_BUILD} --host=${TARGET_HOST} && make && make install

cd ../pjproject && ./compile.sh

