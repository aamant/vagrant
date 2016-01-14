#! /bin/bash

if [ ! -f /etc/apt/sources.list.d/nodesource.list ]; then
    curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
fi

sudo apt-get update
sudo apt-get install -y nodejs build-essential