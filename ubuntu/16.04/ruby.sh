#!/usr/bin/env bash

set -e

OPT_DIR=~/.opt

# Ruby install
mkdir -p $OPT_DIR
cd $OPT_DIR
sudo wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
sudo tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

# Chruby
sudo wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
sudo tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install

ruby-install ruby 2.4

if [ "$CHRUBY_VERSION"]; then
  echo '' > /dev/null
else
  if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
    source /usr/local/share/chruby/chruby.sh
    source /usr/local/share/chruby/auto.sh

    chruby 2.4
    gem source -a http://gems.xing.com
    gem install bundler
  fi
fi
