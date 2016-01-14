#! /bin/bash

if [ ! -f /usr/bin/maildev ]; then
    npm install -g maildev
    sudo maildev &

    sudo mv /etc/rc.local /etc/rc.local.bak
    sudo bash -c 'sed "13imaildev &" /etc/rc.local.bak > /etc/rc.local'
    sudo chmod +x /etc/rc.local
fi