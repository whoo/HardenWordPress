#!/bin/bash


read "t'es dans wordpres"


find -type d -exec chmod 500 {} \;
find -type f -exec chmod 400 {} \;
pushd wp-contents
pushd wp-uploads
find -type f  -exec chmod 500 {} \;
find -type d  -exec chmod 700 {} \;
popd
pushd themes
find -type f  -exec chmod 500 {} \;
find -type d  -exec chmod 700 {} \;
