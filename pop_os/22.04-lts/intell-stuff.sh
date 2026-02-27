#!/usr/bin/env bash
set -euo pipefail

# Intel hybrid CPU "1 core at 100% makes desktop feel frozen" mitigations for Pop!_OS/Ubuntu:
# - irqbalance: spreads hardware interrupts across CPUs to reduce stutter under I/O
# - tlp: saner power/frequency policy management (good "auto-cpufreq-like" effect via apt)

sudo apt update

# 1) Spread IRQ load (network/disk/USB interrupts) across CPUs
sudo apt install -y irqbalance
sudo systemctl enable --now irqbalance

# 2) Manage CPU power/frequency policy (Pop!_OS-friendly replacement for auto-cpufreq via apt)
sudo apt install -y tlp tlp-rdw
sudo systemctl enable --now tlp

echo
echo "== Governors (unique) =="
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 2>/dev/null | sort | uniq || true

echo
echo "== CPU freq driver =="
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver 2>/dev/null || true

echo
echo "== Services status =="
systemctl --no-pager --full status irqbalance tlp || true

echo
echo "Done. Reboot recommended."
