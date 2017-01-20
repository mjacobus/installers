#!/usr/bin/env bash

set -e
source "`dirname $0`/config.sh"

mecho "setting up test app"

template /etc/nginx/sites-available/ruby-test-app
ln -s /etc/nginx/sites-available/ruby-test-app /etc/nginx/sites-enabled/ruby-test-app
rm -rf /etc/nginx/sites-enabled/default

git clone https://github.com/mjacobus/rack-test-app.git /var/www/ruby_test_app

source $PROFILE_CHRUBY

cd /var/www/ruby_test_app && bundle install

service nginx restart
