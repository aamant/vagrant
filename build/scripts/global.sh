#! /bin/bash

sudo apt-get update
sudo apt-get install -y vim curl

function loadScript {
    . /build/scripts/$1.sh
}