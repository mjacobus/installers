#!/usr/bin/env bash

cd /vagrant/

set -e

./nginx-passenger.sh
./ruby-test-app.sh
