#!/usr/bin/env bash

if [ -x "$(command -v watch)" ]; then
	info "watch is already installed"
else
	info "Installing watch"
	brew install watch
fi
