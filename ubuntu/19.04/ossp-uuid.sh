#!/usr/bin/env bash

set -e

sudo apt-get install -y libossp-uuid-dev


#   +--------------------------------------------------------------------+
#   |                                                                    |
#   |  NOTICE: chromedriver-helper is deprecated after 2019-03-31.       |
#   |                                                                    |
#   |  Please update to use the 'webdrivers' gem instead.                |
#   |  See https://github.com/flavorjones/chromedriver-helper/issues/83  |
#   |                                                                    |
#   +--------------------------------------------------------------------+
#
# Post-install message from imgkit:
# ******************************************************************
#
# Now install wkhtmltoimage binaries:
# Global: sudo `which imgkit` --install-wkhtmltoimage
#         rvmsudo imgkit --install-wkhtmltoimage
# (installs to default /usr/local/bin/wkhtmltoimage)
#
# inside RVM folder: export TO=`which imgkit | sed 's:/imgkit:/wkhtmltoimage:'` && imgkit --install-wkhtmltoimage
# (you'll have to configure the location of the binary if you do this!)
#
# (run imgkit --help to see more options)
# ******************************************************************
# Post-install message from phony_rails:
# PhonyRails v0.10.0 changes the way numbers are stored!
# It now adds a ' + ' to the normalized number when it starts with a country number!
