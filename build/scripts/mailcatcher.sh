#! /bin/bash

sudo apt-get install -y build-essential software-properties-common
sudo apt-get install -y libsqlite3-dev ruby1.9.1-dev
sudo gem install mailcatcher

sed "14imailcatcher --ip 0.0.0.0" /etc/rc.local > /etc/rc.local