#!/usr/bin/env bash

sudo apt install openssh-server

sudo systemctl enable --now ssh
