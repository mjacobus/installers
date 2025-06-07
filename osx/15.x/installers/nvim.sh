#!/usr/bin/env bash

if command -v nvim &>/dev/null; then
	info "nvim is already installed"
else
	info "Installing neovim..."
	brew install --HEAD neovim
fi
