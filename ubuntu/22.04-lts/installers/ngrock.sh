#!/usr/bin/env bash

# Download the latest version (check arch if you're not on x86_64)
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-amd64.zip

# Unzip it
unzip ngrok-stable-linux-amd64.zip

# Move the binary to a directory in your PATH
sudo mv ngrok /usr/local/bin

# Make it executable (optional, usually already is)
sudo chmod +x /usr/local/bin/ngrok

# Verify
ngrok version
