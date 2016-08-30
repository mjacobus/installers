#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

install build-essential patch
install ruby-dev zlib1g-dev liblzma-dev
