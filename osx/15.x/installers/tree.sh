#!/usr/bin/env bash

if [ -x "$(command -v tree)" ]; then
	info "tree alrady installed"
else
	info "Installing tree..."
	brew install tree
fi
