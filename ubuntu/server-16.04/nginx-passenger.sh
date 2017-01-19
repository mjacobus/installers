#!/usr/bin/env bash

# Works on Ubuntu server 16.4

#
# Configuration
#-------------------------------------------------------------------------------

RUBY_VERSION='2.4.0'


#-------------------------------------------------------------------------------

set -e
source "`dirname $0`/config.sh"
alias echo='mecho'

install git
install nginx


#
# Ruby installation
#-------------------------------------------------------------------------------

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
PROFILE_CHRUBY=/etc/profile.d/chruby.sh

if [ "$CHRUBY_VERSION"]; then
  echo ''
else
  source /usr/local/share/chruby/chruby.sh
  echo 'if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then' >  $PROFILE_CHRUBY
  echo '  source /usr/local/share/chruby/chruby.sh'               >> $PROFILE_CHRUBY
  echo 'fi'                                                       >> $PROFILE_CHRUBY
  echo "chruby $RUBY_VERSION"                                     >> $PROFILE_CHRUBY
fi

chruby $RUBY_VERSION


echo "Installing Passenger"

# https://www.phusionpassenger.com/library/install/nginx/install/oss/xenial/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

# Add our APT repository
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

# Install Passenger + Nginx
sudo apt-get install -y nginx-extras passenger


backup_file /etc/nginx/nginx.conf
sed -i 's/# \(include \/etc\/nginx\/passenger\.conf\.*\)/\1/g' /etc/nginx/nginx.conf

sudo /usr/bin/passenger-config validate-install --auto
