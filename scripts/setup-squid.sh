#!/usr/bin/env bash

echo "# Installing squid proxy"

apt-get -y install squid

mv /etc/squid/squid.conf /etc/squid/squid.conf.orig

cp /vagrant/configs/squid.conf /etc/squid

cp /vagrant/cert/192.168.56.32.nip.io.crt /etc/squid
cp /vagrant/cert/192.168.56.32.nip.io.key /etc/squid
chmod 600 /etc/squid/192.168.56.32.nip.io.key

systemctl restart squid

sleep 5

output="$(curl -s -o /dev/null -w "%{http_code}" -x http://127.0.0.1:3128/ www.w3.org)"

if [ "${output}" -eq 200 ]
then
    echo "Proxy test: PASSED.  Http code:" $output
else
    echo "Proxy test: FAILED. Http code:" $output 
fi

