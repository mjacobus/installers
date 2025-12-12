#!/usr/bin/env bash

sudo apt install i8kutils
sudo modprobe i8k


sudo apt install lm-sensors fancontrol
sudo sensors-detect
