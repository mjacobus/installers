#!/usr/bin/env bash


RUBY_VERSION='2.4.0'
SCRIPTS=`pwd`
BASE_DIR=$SCRIPTS
TEMPLATES_PATH=$BASE_DIR/templates
PROFILE_CHRUBY=/etc/profile.d/chruby.sh

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

function template () {
  local file=$1
  local sourceFile=$TEMPLATES_PATH/$file

  mecho "Coping ${sourceFile} to ${file}"
  cp -f $sourceFile $file
}

alias info='mecho'
