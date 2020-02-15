#!/usr/bin/env bash

# https://obsproject.com/wiki/install-instructions#linux
# https://www.youtube.com/watch?v=BgpDb1XDDfY

set -ex

sudo apt-get install -y ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install -y obs-studio
