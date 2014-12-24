#!/bin/bash

echo "t'es dans wordpres"
read a

[ "x$a" != "xy" ] && exit

echo "Secure"

find -type d -exec chmod 500 {} \;
find -type f -exec chmod 400 {} \;
pushd wp-content
pushd uploads
find -type f -exec chmod 500 {} \;
find -type d -exec chmod 700 {} \;
popd
pushd themes
find -type f -exec chmod 500 {} \;
find -type d -exec chmod 700 {} \;
