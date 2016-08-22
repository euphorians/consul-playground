#!/usr/bin/env bash

apt-get install -y software-properties-common
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-8-jdk
apt-get install -y emacs24-nox
apt-get install -y jq
apt-get install -y puppet-common
apt-get install -y curl
apt-get install -y siege
apt-get install -y htop
apt-get install -y haproxy
