#!/usr/bin/env bash

if [ -x "$(command -v htop)" ]; then
	info "htop installed"
else
	info "Installing htop..."
	brew install htop
fi
