#!/usr/bin/env bash

set -ex


# sudo apt-get install -y lsb

# # Driver
# # Driver here? https://support.epson.net/linux/Printer/LSB_distribution_pages/en/escpr.php
mkdir -p drivers
curl -L "https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=176&PRN=Linux%20deb%2064bit%20package&OSC=LX&DL" -o drivers/epson-inkjet-printer-escpr_1.8.5-1_amd64.deb
sudo apt install -y ./drivers/epson-inkjet-printer-escpr_1.8.5-1_amd64.deb

# # Utility
#d # Utility here? https://support.epson.net/linux/Printer/LSB_distribution_pages/en/utility.php
curl -L "https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=177&PRN=Linux%20deb%2064bit%20package&OSC=LX&DL" -o drivers/epson-printer-utility_1.1.3-1_amd64.deb
sudo apt install -y ./drivers/epson-printer-utility_1.1.3-1_amd64.deb

# Scanner
# Driver here? https://support.epson.net/linux/en/epsonscan2.php
curl -L "https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=171&PRN=Linux%20deb%2064bit%20package&OSC=LX&DL" -o drivers/epsonscan2-bundle-6.7.63.0.x86_64.deb.tar.gz
tar xvf ./drivers/epsonscan3-bundle-6.7.63.0.x86_64.deb.tar.gz
sudo apt install -y ./epsonscan2-bundle-6.7.63.0.x86_64.deb/core/*.deb
sudo apt install -y ./epsonscan2-bundle-6.7.63.0.x86_64.deb/plugins/*.deb


exit 0

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
