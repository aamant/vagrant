#! /bin/bash

if [ ! -f /etc/apt/sources.list.d/dotdeb.list ]; then
    sudo echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
    sudo echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.list

    wget --quiet https://www.dotdeb.org/dotdeb.gpg
    sudo apt-key add dotdeb.gpg && rm -rf dotdeb.gpg*
fi

sudo apt-get update