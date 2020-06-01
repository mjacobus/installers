#!/usr/bin/env bash

set -ex

# https://github.com/zsa/wally/wiki/Linux-install
# wally firmewar burner
sudo apt-get install gtk+3.0 webkit2gtk-4.0 libusb-dev

sudo touch /etc/udev/rules.d/50-wally.rules

echo "add this rules"
# # Teensy rules for the Ergodox EZ Original / Shine / Glow
# ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", ENV{ID_MM_DEVICE_IGNORE}="1"
# ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789A]?", ENV{MTP_NO_PROBE}="1"
# SUBSYSTEMS=="usb", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789ABCD]?", MODE:="0666"
# KERNEL=="ttyACM*", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", MODE:="0666"
#
# # STM32 rules for the Planck EZ Standard / Glow
# SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", \
#     MODE:="0666", \
#     SYMLINK+="stm32_dfu"
