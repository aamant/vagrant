#! /bin/bash

sudo apt-get update
sudo apt-get install -y vim curl git

function loadScript {
    . /build/scripts/$1.sh
}