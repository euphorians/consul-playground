#!/usr/bin/env bash

#Install vagrant ssh key
mkdir -v -p /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub'
mv -v authorized_keys /home/vagrant/.ssh
chown -v -R vagrant /home/vagrant/.ssh
chmod -v -R go-rwsx /home/vagrant/.ssh

#Add vagrant user to passwordless sudo
cp -v /etc/sudoers{,.orig}
sed -i -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

pwd
ls -lha

date > /out.txt
cat /out.txt
