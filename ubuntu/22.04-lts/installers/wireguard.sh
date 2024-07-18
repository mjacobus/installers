#!/usr/bin/env bash

if ! command -v wg &>/dev/null; then
	echo "Installing wireguard"
	sudo apt install -y wireguard
fi

# install resolvconf if not installed
if ! command -v resolvconf &>/dev/null; then
	echo "Installing resolvconf"
	sudo apt install -y resolvconf
fi
