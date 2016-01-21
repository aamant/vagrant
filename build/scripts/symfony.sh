#! /bin/bash

if [ ! -f /usr/local/bin/symfony ]; then
    curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
    chmod a+x /usr/local/bin/symfony
fi