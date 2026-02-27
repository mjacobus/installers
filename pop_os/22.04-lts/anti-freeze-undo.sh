#!/usr/bin/env bash
set -euo pipefail

echo "== Reverting anti-freeze setup =="

# -----------------------------------
# 1. Disable earlyoom
# -----------------------------------
if systemctl list-unit-files | grep -q earlyoom; then
  sudo systemctl disable --now earlyoom || true
  sudo apt remove -y earlyoom || true
  sudo rm -f /etc/default/earlyoom
fi

# -----------------------------------
# 2. Disable irqbalance (optional)
# -----------------------------------
if systemctl list-unit-files | grep -q irqbalance; then
  sudo systemctl disable --now irqbalance || true
  sudo apt remove -y irqbalance || true
fi

# -----------------------------------
# 3. Remove CPU protection tweaks
# -----------------------------------
sudo rm -rf /etc/systemd/system/user-.slice.d
sudo rm -rf /etc/systemd/system/system.slice.d

sudo systemctl daemon-reexec
sudo systemctl daemon-reload

echo
echo "✅ Anti-freeze reverted."
echo "Reboot recommended."
