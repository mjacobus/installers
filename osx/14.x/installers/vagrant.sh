#!/usr/bin/env bash

echo "Cannot install vagrant in M1, M2 or M3"
exit 1

set -e

# vagrant
if [ -x "$(command -v vagrant)" ]; then
	echo
else
	echo "Installing vagrant..."
	brew install --cask vagrant
fi

# virtualbox
if [ -x "$(command -v virtualbox)" ]; then
	echo
else
	echo "Installing virtualbox..."
	arch -arm64 brew install --cask virtualbox
fi

# vagrant-vbguest
if [ -x "$(command -v vagrant-vbguest)" ]; then
	echo
else
	echo "Installing vagrant-vbguest plugin..."
	vagrant plugin install vagrant-vbguest
fi
