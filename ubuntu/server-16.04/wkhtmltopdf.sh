#!/usr/bin/env bash

# source: https://docs.docker.com/engine/installation/linux/ubuntulinux/

set -e

source "`dirname $0`/config.sh"

sudo apt-get install -f wkhtmltopdf

# sudo apt-get install libxrender1
#
# cd /opt
#
# wget -c https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
#
# tar -xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
#
# ln -s /opt/wkhtmltox/bin/wkhtmltopdf /usr/bin
