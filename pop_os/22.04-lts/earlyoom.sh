#!/usr/bin/env bash

set -e

sudo apt install earlyoom

echo "Installing earlyoom service..."
sudo systemctl enable earlyoom
sudo systemctl start earlyoom
echo "Done!"
