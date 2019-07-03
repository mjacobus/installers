#!/usr/bin/env bash

# epson-printer-utility: error while loading shared libraries: libQtCore.so.4: cannot open shared object file: No such file or directory
echo "install drivers from here http://download.ebz.epson.net/dsc/search/01/search/searchModule"

# for epson-printer-utility
sudo apt-get install -y libqtcore4
sudo apt-get install -y libqtgui4
sudo apt-get install -y libcanberra-gtk-module


# scanner

sudo apt-get install -y libsane-extras
