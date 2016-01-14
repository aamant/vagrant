#! /bin/bash

if [ ! -f /usr/bin/uglifyjs ]; then
    npm install --global uglify-js
fi

if [ ! -f /usr/bin/uglifycss ]; then
    npm install --global uglifycss
fi