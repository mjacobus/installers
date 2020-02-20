#!/usr/bin/env bash

# https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04

set -ex

sudo apt-get install -y redis-server


# If you have problems starting the server after installing, it may be that you have to remove ipv6 support
# from your /etc/redis/redis.conf

# - bind 127.0.0.1 ::1
# + bind 127.0.0.1
#
# Then

# sudo systemctl start redis-server

# Source:
#
# https://askubuntu.com/questions/1053167/ubuntu-error-errors-were-encountered-while-processing-redis-server
