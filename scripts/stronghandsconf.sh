#!/bin/bash -ev

mkdir -p ~/.SHND
echo "rpcuser=username" >>~/.SHND/stronghands.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.SHND/stronghands.conf

