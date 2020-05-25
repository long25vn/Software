#!/bin/sh
GOVERSION="go1.14.2"

echo "=======================================Install Golang======================================="

apt update
apt -y upgrade

echo https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz
curl -O https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz
tar -xvf $GOVERSION.linux-amd64.tar.gz
rm -rf /usr/local/go
mv go /usr/local
rm $GOVERSION.linux-amd64.tar.gz


echo "=======================================Set \$GOPATH======================================="

echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.profile
echo 'export GOPATH=$HOME/go' >>~/.profile 
echo 'export PATH=$PATH:$GOPATH/bin' >>~/.profile

source ~/.profile
