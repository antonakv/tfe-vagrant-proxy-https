#!/usr/bin/env bash

export http_proxy=https://192.168.56.32:3128/
export https_proxy=https://192.168.56.32:3128/ 
export no_proxy="127.0.0.1,localhost"

echo "# Removing default GW"
ip route delete default

echo "# Fixing a repository certificate issue"

apt-get -y install dirmngr gpg-agent
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DA418C88A3219F7B

echo "# Downloading installation script"
mkdir -p /vagrant/tfe
curl -# -o /vagrant/tfe/install.sh https://install.terraform.io/ptfe/stable

cp /vagrant/configs/replicated.conf /etc/replicated.conf
cp /vagrant/configs/replicated.conf /root/replicated.conf

if [ -f /vagrant/license.rli ]  ; then
  echo "# Running installation script"
  bash /vagrant/tfe/install.sh private-address=192.168.56.33 public-address=192.168.56.33
else
  echo "# Error, missing /vagrant/license.rli"
  exit 1
fi
