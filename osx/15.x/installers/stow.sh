#!/usr/bin/env bash

if command -v stow &>/dev/null; then
	info "Stow installed"
else
	info "Installing stow..."
	brew install stow
fi
