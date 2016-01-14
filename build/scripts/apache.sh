#! /bin/bash

rm -rf /etc/apache2/sites-enabled/*
cp -r /build/config/sites-enabled/* /etc/apache2/sites-enabled/

if [ -f /var/www/html/index.html ]; then
    sudo mv /var/www/html/index.html /var/www/html/index.html.bak
fi

sudo cp /build/config/www/html/index.php /var/www/html/index.php

sudo /etc/init.d/apache2 reload