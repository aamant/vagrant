#! /bin/bash

sudo apt-get -y install php5-cli php5-mcrypt php5-json php5-intl php5-mysql php5-curl php5-gd php5-xdebug libapache2-mod-php5

cat << EOF | sudo tee /etc/php5/mods-available/xdebug.ini
zend_extension=xdebug.so

xdebug.remote_enable = on
xdebug.remote_connect_back = on
xdebug.cli_color=1
xdebug.show_local_vars=1
EOF

sudo a2enmod rewrite

sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sudo sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini

sudo service apache2 restart