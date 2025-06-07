#!/usr/bin/env bash

# unless fd is installed

if [ -x "$(command -v fd)" ]; then
	info "fd is already installed"
else
	info "Installing fd"
	brew install fd
fi
