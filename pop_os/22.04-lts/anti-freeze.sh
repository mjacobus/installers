#!/usr/bin/env bash
set -euo pipefail

echo "== Prevent desktop hard-freezes =="

sudo apt update

# --------------------------------------------------
# 1. Kill memory hogs BEFORE system freeze
# (desktop equivalent of VPS OOM protection)
# --------------------------------------------------
sudo apt install -y earlyoom

sudo systemctl enable --now earlyoom

# make it aggressive (desktop-friendly)
sudo mkdir -p /etc/default
sudo tee /etc/default/earlyoom >/dev/null <<EOF
EARLYOOM_ARGS="-r 60 -m 10 -s 10 --prefer '^(firefox|chrome|node|docker|code)$'"
EOF

sudo systemctl restart earlyoom

# --------------------------------------------------
# 2. Spread interrupts across CPUs
# prevents single-core lockups
# --------------------------------------------------
sudo apt install -y irqbalance
sudo systemctl enable --now irqbalance

# --------------------------------------------------
# 3. Protect system responsiveness (systemd CPU weight)
# reserve CPU for OS and UI
# --------------------------------------------------
sudo mkdir -p /etc/systemd/system/user-.slice.d

sudo tee /etc/systemd/system/user-.slice.d/cpu-protect.conf >/dev/null <<EOF
[Slice]
CPUWeight=100
EOF

sudo mkdir -p /etc/systemd/system/system.slice.d

sudo tee /etc/systemd/system/system.slice.d/cpu-protect.conf >/dev/null <<EOF
[Slice]
CPUWeight=200
EOF

sudo systemctl daemon-reexec

echo
echo "✅ Installed protections."
echo "Reboot recommended."
