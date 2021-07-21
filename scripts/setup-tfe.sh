#!/usr/bin/env bash

echo "# Removing default GW"
ip route delete default

curl -v --proxy http://192.168.56.32:8080 -o proxy.pem http://mitm.it/cert/pem
chown vagrant: proxy.pem
cp proxy.pem /usr/local/share/ca-certificates/proxy.crt
update-ca-certificates

export HTTPS_PROXY=http://192.168.56.32:8080/ 
export NO_PROXY="127.0.0.1,localhost"
export DEBIAN_FRONTEND=noninteractive
export CURL_CA_BUNDLE=/home/vagrant/proxy.pem

echo "# Downloading installation script"
mkdir -p /vagrant/tfe
curl -# -o /vagrant/tfe/install.sh https://install.terraform.io/ptfe/stable

cp /vagrant/configs/replicated.conf /etc/replicated.conf
cp /vagrant/configs/replicated.conf /root/replicated.conf
cp /vagrant/configs/proxy.conf /etc/apt/apt.conf.d/000proxy.conf

if [ -f /vagrant/license.rli ]  ; then
  echo "# Running installation script"
  bash /vagrant/tfe/install.sh private-address=192.168.56.33 public-address=192.168.56.33 
else
  echo "# Error, missing /vagrant/license.rli"
  exit 1
fi
