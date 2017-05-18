#!/usr/bin/env bash

if [ ! -f .env ]; then
  echo "Please provide an .env file"
  exit 1
fi

source .env

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
  local target=$file

  if [[ $# == 2 ]]; then
    target=$2
  fi

  mecho "Coping ${sourceFile} to ${target}"
  cp -f $sourceFile $target

  sed -i "s/_DEPLOY_USER_/$DEPLOY_USER/g" $target
  sed -i "s/_GITHUB_USER_/$GITHUB_USER/g" $target
}

alias info='mecho'
