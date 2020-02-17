#!/usr/bin/env bash

set -ex

# sudo apt-get install -y lsb

wget -c https://download3.ebz.epson.net/dsc/f/03/00/10/49/18/41ef4e1bb2cb43759ae3173912fde3c37f9f4b98/epson-inkjet-printer-escpr_1.7.7-1lsb3.2_amd64.deb -P drivers
wget -c https://download3.ebz.epson.net/dsc/f/03/00/10/70/57/8285e27366498f63203f28567cb48a1578e053e9/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb -P drivers

sudo dpkg -i drivers/epson-inkjet-printer-escpr_1.7.7-1lsb3.2_amd64.deb
sudo dpkg -i drivers/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb

# epson-printer-utility_1.1.1-1lsb3.2_amd64.deb

# Maybes
# # for epson-printer-utility
# sudo apt-get install -y libqtcore4
# sudo apt-get install -y libqtgui4
# sudo apt-get install -y libcanberra-gtk-module
#
#
# # scanner
#
# sudo apt-get install -y libsane-extras

# echo "install drivers from here http://download.ebz.epson.net/dsc/search/01/search/searchModule"
