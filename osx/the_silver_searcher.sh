#!/usr/bin/env bash

if [ -x "$(command -v ag)" ]; then
	info "The Silver Searcher is already installed"
else
	info "Installing silver searcher"
	brew install the_silver_searcher
fi
