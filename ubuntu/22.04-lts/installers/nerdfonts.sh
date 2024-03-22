#!/usr/bin/env bash

set -e

curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash

echo "Run getnf and choose nerdfont"

getnf

echo "Close the terminal and open again so the fonts get picked up"
