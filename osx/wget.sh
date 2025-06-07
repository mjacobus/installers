#!/usr/bin/env bash

if [ -x "$(command -v wget)" ]; then
	info "wget is already installed"
	return 0
fi

info "Installing wget"
brew install wget
