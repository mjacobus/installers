#!/usr/bin/env bash

# Works on Ubuntu 16.4

# https://github.com/shawncplus/phpcomplete.vim/wiki/Getting-better-tags

source "`dirname $0`/config.sh"

set -e

install build-essential debhelper \
    erlang-nox erlang-dev \
    python-matplotlib gnuplot \
    libtemplate-perl

mkdir /tmp/tsung
cd /tmp/tsung

wget https://github.com/processone/tsung/archive/v1.5.0.tar.gz
tar -xvzf v1.5.0.tar.gz
cd tsung-1.5.0
./configure
make
make deb
cd ..
sudo dpkg -i tsung_1.5.0-1_all.deb
