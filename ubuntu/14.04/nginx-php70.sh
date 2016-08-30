#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

APP_PATH=/var/www

source $SCRIPTS/php70.sh
source $SCRIPTS/nginx.sh

template /etc/nginx/sites-available/php-app

sudo ln -sf /etc/nginx/sites-available/php-app /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default

sudo rm -rf $APP_PATH
sudo cp -rfp $TEMPLATES_PATH/php-sample-app $APP_PATH
# sudo chown -R nginx:nginx $APP_PATH
sudo chown -R root:root $APP_PATH

sudo service nginx restart
