#!/usr/bin/env bash

SCRIPTS=`dirname $0`
TEMPLATES_PATH="${SCRIPTS}/templates"

function mecho() {
  echo -e '\E[32m'"\033[1m"
  echo "#############################################################################"
  echo "# $@"
  echo "#############################################################################"
  echo -e "\033[0m"
}

function install() {
  mecho "Installing $@"
  sudo apt-get install -y $@
}

function template() {
  local template=$1

  sudo cp -f "${TEMPLATES_PATH}${template}" $template
}
