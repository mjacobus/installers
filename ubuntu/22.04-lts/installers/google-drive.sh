#!/usr/bin/env bash

sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install -y google-drive-ocamlfuse

mkdir -p ~/GoogleDrive
google-drive-ocamlfuse ~/GoogleDrive
