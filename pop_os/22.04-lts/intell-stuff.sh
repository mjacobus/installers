#!/usr/bin/env bash
set -euo pipefail

# Goal:
# Reduce “desktop feels frozen when 1 CPU hits 100%” on hybrid Intel CPUs (P-cores + E-cores)
# by improving frequency responsiveness and spreading hardware interrupts.

# ---- 1) auto-cpufreq ---------------------------------------------------------
# What it does:
# - Runs a daemon that automatically adjusts CPU power/frequency policy based on load and AC/battery
# - Typically improves interactive responsiveness (frequency ramps faster under bursty loads)
#
# Expected benefit:
# - Fewer micro-freezes / less sluggish UI during short spikes (builds, browser, Electron, etc.)
#
# Notes:
# - It changes your system’s CPU frequency behavior persistently (via service)
# - You can uninstall/disable later if you dislike the behavior

sudo apt update
sudo apt install -y auto-cpufreq
sudo auto-cpufreq --install

# ---- 2) irqbalance -----------------------------------------------------------
# What it does:
# - Distributes hardware interrupts (IRQs) across CPUs
# - Prevents a single core from being overloaded by IRQ handling (network, disk, USB, etc.)
#
# Expected benefit:
# - Less random stutter under I/O activity (network bursts, disk activity, USB events)

sudo apt install -y irqbalance
sudo systemctl enable --now irqbalance

# ---- 3) Quick verification ---------------------------------------------------
# Show which CPU frequency governors are currently active across CPUs.
# With intel_pstate, you often see "powersave" as the governor even when it boosts aggressively.
# The key is not the word itself, but whether the system ramps fast and feels responsive.

echo
echo "Active governors (unique):"
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 2>/dev/null | sort | uniq || true

echo
echo "Services status:"
systemctl --no-pager --full status auto-cpufreq irqbalance || true

echo
echo "Done. Reboot recommended to start clean."
