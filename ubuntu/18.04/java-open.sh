#!/usr/bin/env bash

set -ex

# https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04

sudo apt install -y default-jre

java --version


sudo apt install -y default-jdk

javac -version
