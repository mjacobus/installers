#!/usr/bin/env bash

set -eux

wget -c http://www.s3-client.com/download-amazon-s3-client/dragondisk_1.0.5-0debian_amd64.deb

sudo apt-get intall -y ./dragondisk_1.0.5-0debian_amd64.deb
