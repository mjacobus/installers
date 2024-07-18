#!/usr/bin/env bash

deb_file=./dist/nomachine_8.12.12_4_amd64.deb

sudo dpkg -i $deb_file
sudo apt-get install -f # fix dependencies

# to start the service
# sudo systemctl start nxserver
# sudo systemctl enable nxserver  # To enable NoMachine at startup
