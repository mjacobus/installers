#!/usr/bin/env bash

if [ -d "/Applications/1Password.app" ]; then
	info "1Password installed"
else
	info "Installing 1Password..."
	brew install --cask 1password
fi
