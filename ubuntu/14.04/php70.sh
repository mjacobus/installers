#!/bin/bash

set -e

source "`dirname $0`/config.sh"

# https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04

sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update

install php7.0-fpm       \
        php7.0           \
        php7.0-cli       \
        php7.0-curl      \
        php7.0-gd        \
        php7.0-mysql     \
        php7.0-sqlite    \
        php7.0-intl      \ php7.0-xsl       \ php7.0-mcrypt    \
        php7.0-xdebug    \
        php7.0-memcache  \
        php7.0-memcached \
        php-apc

if [ ! -f /usr/bin/composer.phar ]; then
  mecho "Installing composer..."

  curl -sS https://getcomposer.org/installer | php
  sudo mv composer.phar /usr/bin
  sudo ln -fs /usr/bin/composer.phar /usr/bin/composer
fi

if [ ! -f /etc/php/7.0/mods-available/xdebug.ini ]; then
  mecho "Installing xdebug"

  rm -f /tmp/xdebug-2.4.0.tgz
  wget -O /tmp/xdebug-2.4.0.tgz http://xdebug.org/files/xdebug-2.4.0.tgz
  cd /tmp && sudo tar xzvf xdebug-2.4.0.tgz
  cd xdebug-2.4.0
  sudo phpize
  sudo ./configure
  sudo make
  sudo cp modules/xdebug.so /usr/lib/php/20151012
  sudo ln -s /etc/php/7.0/mods-available/xdebug.ini /etc/php/7.0/cli/conf.d/20-xedebug.ini
  sudo ln -s /etc/php/7.0/mods-available/xdebug.ini /etc/php/7.0/fpm/conf.d/20-xedebug.ini
fi
