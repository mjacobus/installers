#!/usr/bin/env bash

if [ -x "$(command -v gh)" ]; then
	info "gh cli installed"
else
	info "Installing gh..."
	brew install gh
fi
