#!/usr/bin/env bash

SCRIPTS=`dirname $0`

function mecho() {
  echo -e '\E[32m'"\033[1m"
  echo "#############################################################################"
  echo "# $1"
  echo "#############################################################################"
  echo -e "\033[0m"
}

function install() {
  mecho "Installing $@"
  sudo apt-get install -y $@
}

function backup_file () {
  local timestamp=`date +%Y%m%d%H_%M_%S`
  local file=$1
  local backup="${file}.bkp_${timestamp}"

  mecho "Backing up file ${file} to ${backup}"
  cp -rp $file $backup
}
