#!/usr/bin/env bash

echo "# Installing squid proxy"

apt-get -y install squid

cp /etc/squid/squid.conf /etc/squid/squid.conf.orig

sed -i "s,#cache_dir ufs /var/spool/squid 100 16 256,cache_dir ufs /var/spool/squid 4096 16 256," /etc/squid/squid.conf

sed -i "/INSERT YOUR OWN RULE/a http_access allow all" /etc/squid/squid.conf

cp /vagrant/cert/192.168.56.32.nip.io.crt /etc/squid
cp /vagrant/cert/192.168.56.32.nip.io.key /etc/squid
chmod 600 /etc/squid/192.168.56.32.nip.io.key

sed -i "s/http_port 3128/http_port 0.0.0.0:3128 cert=\/etc\/squid\/192.168.56.32.nip.io.crt key=\/etc\/squid\/192.168.56.32.nip.io.key/" /etc/squid/squid.conf

systemctl restart squid

sleep 5

output="$(curl -s -o /dev/null -w "%{http_code}" -x http://127.0.0.1:3128/ www.w3.org)"

if [ "${output}" == "200" ]
then
    echo "Proxy test: PASSED.  Http code:" $output
else
    echo "Proxy test: FAILED. Http code:" $output 
fi

