#!/usr/bin/env bash

if [ -x "$(command -v ag)" ]; then
	echo "The Silver Searcher is already installed"
	return 0
fi

brew install the_silver_searcher
