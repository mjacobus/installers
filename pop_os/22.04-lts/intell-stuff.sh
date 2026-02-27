#!/usr/bin/env bash

set -e

sudo apt install linux-tools-common linux-tools-generic
sudo apt install intel-cmt-cat

sudo apt install tuned
sudo tuned-adm profile latency-performance

# adicionar isso no grub
#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_pstate=active"
# sudo vim  /etc/default/grub
# sudo update-grub
# reboot

# "Ajuste que costuma resolver 80% dos casos"
sudo apt install auto-cpufreq
sudo auto-cpufreq --install

# Outro tweak
sudo apt install irqbalance
sudo systemctl enable irqbalance
sudo systemctl start irqbalance
