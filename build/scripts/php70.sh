#! /bin/bash

sudo apt-get -y install php7.0-cli php7.0-mcrypt php7.0-json php7.0-intl php7.0-mysql php7.0-curl php7.0-gd libapache2-mod-php7.0

cat << EOF | sudo tee -a /etc/php/7.0/mods-available/xdebug.ini
zend_extension=xdebug.so

xdebug.remote_enable = on
xdebug.remote_connect_back = on
xdebug.cli_color=1
xdebug.show_local_vars=1
EOF

sudo a2enmod rewrite

sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/apache2/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/apache2/php.ini
sudo sed -i "s/disable_functions = .*/disable_functions = /" /etc/php/7.0/cli/php.ini

sudo service apache2 restart