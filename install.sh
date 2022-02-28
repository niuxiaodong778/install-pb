#!/bin/bash

if [ `command -v protoc` ];then
    echo 'protoc 已经安装'
#    exit
fi

unzip protoc-3.14.0-linux-x86_64.zip
mv -f bin/protoc /usr/local/bin/
mv -f include/ /usr/local/include/
chmod +x /usr/local/bin/protoc
protoc --version
rm bin/ include/ readme.txt -fr
