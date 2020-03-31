#!/usr/bin/env bash

set -ex

# https://thishosting.rocks/install-java-ubuntu/

sudo apt-get install -y default-jdk
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install oracle-java11-installer
sudo apt-get install oracle-java13-installer
java -version
