#!/usr/bin/env bash

set -ex

sudo apt-get install -y lsb

# SEARCH FOR DRIVERS HERE:
# http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX&productName=B700

# ESC/P-R Driver (generic driver)
wget -c https://download3.ebz.epson.net/dsc/f/03/00/12/04/32/74964f9bfbe239efd82aab80c487bf3f150ef548/epson-inkjet-printer-escpr_1.7.8-1lsb3.2_amd64.deb -P drivers
# printer utility
wget -c https://download3.ebz.epson.net/dsc/f/03/00/12/18/20/47a925b197d626fa66f80bb0eabbb56811a5eed8/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb -P drivers

sudo dpkg -i drivers/epson-inkjet-printer-escpr_1.7.8-1lsb3.2_amd64.deb
sudo dpkg -i drivers/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb

# wget -c https://download3.ebz.epson.net/dsc/f/03/00/10/49/18/41ef4e1bb2cb43759ae3173912fde3c37f9f4b98/epson-inkjet-printer-escpr_1.7.7-1lsb3.2_amd64.deb -P drivers
# wget -c https://download3.ebz.epson.net/dsc/f/03/00/10/70/57/8285e27366498f63203f28567cb48a1578e053e9/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb -P drivers
#
# sudo dpkg -i drivers/epson-inkjet-printer-escpr_1.7.8-1lsb3.2_i386.deb
# sudo dpkg -i drivers/epson-printer-utility_1.1.1-1lsb3.2_amd64.deb
#
# # epson-printer-utility_1.1.1-1lsb3.2_amd64.deb
#
# # Maybes
# # # for epson-printer-utility
# # sudo apt-get install -y libqtcore4
# # sudo apt-get install -y libqtgui4
# # sudo apt-get install -y libcanberra-gtk-module
# #
# #
# # # scanner
# #
# # sudo apt-get install -y libsane-extras
#
# # echo "install drivers from here http://download.ebz.epson.net/dsc/search/01/search/searchModule"
