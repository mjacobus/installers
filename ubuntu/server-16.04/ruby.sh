#!/usr/bin/env bash

#
# Ruby installation
#-------------------------------------------------------------------------------

set -e
source "`dirname $0`/config.sh"

install build-essential
install ruby-dev
install mysql-client
install libmysqlclient-dev
install libpq-dev
install sqlite
install libsqlite3-dev

echo "Installing ruby-install"

wget -O /opt/ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
cd /opt
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
make install
ruby-install
ruby-install ruby $RUBY_VERSION


#
# Ruby configuration
#-------------------------------------------------------------------------------

echo "Installing chruby"

wget -O /opt/chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
cd /opt
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
make install

template /etc/profile.d/chruby.sh
source /etc/profile.d/chruby.sh

echo "Installing bundler"

gem install bundler
