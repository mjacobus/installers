#!/usr/bin/env bash

if [ "$(command -v ctags)" ]; then
	if ctags --version | grep -q "Universal Ctags"; then
		info "Ctags already installed"
	else
		info "Installing Universal Ctags..."
		brew install universal-ctags
	fi
fi
