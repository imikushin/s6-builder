#!/bin/sh
set -e -x

mkdir -p /usr/local/src && cd /usr/local/src

git clone https://github.com/skarnet/skalibs.git
git clone https://github.com/skarnet/execline.git
git clone https://github.com/skarnet/s6.git

cd /usr/local/src/skalibs && git checkout ${SKALIBS_TAG}
cd /usr/local/src/execline && git checkout ${EXECLINE_TAG}
cd /usr/local/src/s6 && git checkout ${S6_TAG}

cd ../skalibs/ && ./configure --disable-shared --enable-force-devr && make && make install
cd ../execline && ./configure --enable-static-libc && make && make install
cd ../s6 && ./configure --enable-static-libc --exec-prefix=/s6 && make && make install

mkdir -p /output
tar -czf /output/s6-static.tar.gz -C /s6 .
