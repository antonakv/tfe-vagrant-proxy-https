# Install TFE on Demo version with Self Sign Certificate - proxy with self sign certificate - vagrant

## Intro

This manual is dedicated to Install TFE on Demo version with Self Sign Certificate - http proxy - vagrant.

Tested on Mac OS X.

## Requirements

- Oracle Virtualbox recent version installed
[VirtualBox installation manual](https://www.virtualbox.org/manual/ch01.html#intro-installing)

- Hashicorp vagrant recent version installed
[Vagrant installation manual](https://learn.hashicorp.com/tutorials/vagrant/getting-started-install)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

## Preparation 

- Clone git repository. 

```bash
git clone https://github.com/antonakv/tfe-vagrant-proxy
```

Expected command output looks like this:

```bash
Cloning into 'tfe-vagrant-proxy'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.
```

- Change folder to tfe-vagrant-proxy

```bash
cd tfe-vagrant-proxy
```

- Copy your existing Terraform enterprise license file with extension .rli to 
folder tfe-vagrant-proxy created on the previous step and rename it to license.rli

## Provisioning

- In the same folder you were before run 

```bash
vagrant up
```

Sample result

```bash
$ vagrant up     
Bringing machine 'proxy' up with 'virtualbox' provider...
Bringing machine 'tfe' up with 'virtualbox' provider...
==> proxy: Importing base box 'aakulov/bionic64'...
==> proxy: Matching MAC address for NAT networking...
==> proxy: Checking if box 'aakulov/bionic64' version '21.07.21' is up to date...
==> proxy: Setting the name of the VM: tfe-vagrant-proxy-https_proxy_1626870125775_3292
==> proxy: Clearing any previously set network interfaces...
==> proxy: Preparing network interfaces based on configuration...
    proxy: Adapter 1: nat
    proxy: Adapter 2: hostonly
==> proxy: Forwarding ports...
    proxy: 22 (guest) => 2222 (host) (adapter 1)
==> proxy: Running 'pre-boot' VM customizations...
==> proxy: Booting VM...
==> proxy: Waiting for machine to boot. This may take a few minutes...
    proxy: SSH address: 127.0.0.1:2222
    proxy: SSH username: vagrant
    proxy: SSH auth method: private key
    proxy: 
    proxy: Vagrant insecure key detected. Vagrant will automatically replace
    proxy: this with a newly generated keypair for better security.
    proxy: 
    proxy: Inserting generated public key within guest...
    proxy: Removing insecure key from the guest if it\'s present...
    proxy: Key inserted! Disconnecting and reconnecting using new SSH key...
==> proxy: Machine booted and ready!
==> proxy: Checking for guest additions in VM...
==> proxy: Setting hostname...
==> proxy: Configuring and enabling network interfaces...
==> proxy: Mounting shared folders...
    proxy: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/tfe-vagrant-proxy-https
==> proxy: Running provisioner: shell...
    proxy: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210721-90922-vowmv5.sh
    proxy: # Self signed certificate generation
    proxy: Generating RSA private key, 4096 bit long modulus (2 primes)
    proxy: ..............................................................................................................................++++
    proxy: ..............................................................................................................................................................................................................++++
    proxy: e is 65537 (0x010001)
    proxy: Ignoring -days; not generating a certificate
    proxy: Generating a RSA private key
    proxy: ..................................................................................................................................................................................................................+++++
    proxy: ...........+++++
    proxy: writing new private key to '192.168.56.32.nip.io.key'
    proxy: -----
    proxy: Signature ok
    proxy: subject=C = NL, L = AMS, O = HC, CN = 192.168.56.32.nip.io
    proxy: Getting CA Private Key
==> proxy: Running provisioner: shell...
    proxy: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210721-90922-z5td2x.sh
    proxy: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [1,011 B]
    proxy: Hit:5 https://apt.releases.hashicorp.com bionic InRelease
    proxy: Get:3 http://mirror.1000mbps.com/ubuntu bionic-updates InRelease [88.7 kB]
    proxy: Get:6 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
    proxy: Hit:2 http://osmirror.rug.nl/ubuntu bionic InRelease
    proxy: Hit:4 http://mirror.serverion.com/ubuntu bionic-backports InRelease
    proxy: Get:7 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1,814 kB]
    proxy: Get:8 http://security.ubuntu.com/ubuntu bionic-security/main i386 Packages [1,018 kB]
    proxy: Get:9 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [333 kB]
    proxy: Get:10 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [24.8 kB]
    proxy: Get:11 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [5,072 B]
    proxy: Fetched 3,373 kB in 2s (1,621 kB/s)
    proxy: Reading package lists...
    proxy: Reading package lists...
    proxy: Building dependency tree...
    proxy: Reading state information...
    proxy: The following additional packages will be installed:
    proxy:   dh-python gir1.2-harfbuzz-0.0 icu-devtools libexpat1-dev libglib2.0-bin
    proxy:   libglib2.0-dev libglib2.0-dev-bin libgraphite2-3 libgraphite2-dev
    proxy:   libharfbuzz-dev libharfbuzz-gobject0 libharfbuzz-icu0 libharfbuzz0b
    proxy:   libicu-dev libicu-le-hb-dev libicu-le-hb0 libiculx60 libjpeg-turbo8
    proxy:   libjpeg-turbo8-dev libjpeg8 libpcre16-3 libpcre3-dev libpcre32-3
    proxy:   libpcrecpp0v5 libpython3-dev libpython3.6-dev libxslt1.1 pkg-config
    proxy:   python-pip-whl python3-distutils python3-lib2to3 python3.6-dev
    proxy: Suggested packages:
    proxy:   libglib2.0-doc libgraphite2-utils icu-doc libssl-doc
    proxy: Recommended packages:
    proxy:   python3-setuptools python3-wheel
    proxy: The following NEW packages will be installed:
    proxy:   dh-python gir1.2-harfbuzz-0.0 icu-devtools libexpat1-dev libffi-dev
    proxy:   libglib2.0-bin libglib2.0-dev libglib2.0-dev-bin libgraphite2-3
    proxy:   libgraphite2-dev libharfbuzz-dev libharfbuzz-gobject0 libharfbuzz-icu0
    proxy:   libharfbuzz0b libicu-dev libicu-le-hb-dev libicu-le-hb0 libiculx60
    proxy:   libjpeg-turbo8 libjpeg-turbo8-dev libjpeg8 libjpeg8-dev libpcre16-3
    proxy:   libpcre3-dev libpcre32-3 libpcrecpp0v5 libpython3-dev libpython3.6-dev
    proxy:   libssl-dev libxml2-dev libxslt1-dev libxslt1.1 pkg-config python-pip-whl
    proxy:   python3-dev python3-distutils python3-lib2to3 python3-pip python3.6-dev
    proxy:   zlib1g-dev
    proxy: 0 upgraded, 40 newly installed, 0 to remove and 0 not upgraded.
    proxy: Need to get 63.4 MB of archives.
    proxy: After this operation, 159 MB of additional disk space will be used.
    proxy: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [1,011 B]
    proxy: Get:9 http://mirror.amsiohosting.net/archive.ubuntu.com bionic-updates/main amd64 icu-devtools amd64 60.2-3ubuntu3.1 [179 kB]
    proxy: Get:11 http://mirror.hostnet.nl/ubuntu/archive bionic-updates/main amd64 libglib2.0-bin amd64 2.56.4-0ubuntu0.18.04.8 [68.5 kB]
    proxy: Get:4 http://mirror.serverius.net/ubuntu bionic-updates/main amd64 python3-distutils all 3.6.9-1~18.04 [144 kB]
    proxy: Get:10 http://nl.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libexpat1-dev amd64 2.2.5-3ubuntu0.2 [122 kB]
    proxy: Get:7 http://archive.ubuntu.com/ubuntu bionic/main amd64 libharfbuzz0b amd64 1.7.2-1ubuntu1 [232 kB]
    proxy: Get:8 http://mirror.transip.net/ubuntu/ubuntu bionic/main amd64 gir1.2-harfbuzz-0.0 amd64 1.7.2-1ubuntu1 [18.6 kB]
    proxy: Get:2 http://mirror.dataone.nl/ubuntu-archive bionic-updates/main amd64 libjpeg-turbo8 amd64 1.5.2-0ubuntu5.18.04.4 [110 kB]
    proxy: Get:3 http://osmirror.rug.nl/ubuntu bionic-updates/main amd64 python3-lib2to3 all 3.6.9-1~18.04 [77.4 kB]
    proxy: Get:6 http://nl3.archive.ubuntu.com/ubuntu bionic/main amd64 libgraphite2-3 amd64 1.3.11-2 [78.7 kB]
    proxy: Get:18 https://nl.mirrors.clouvider.net/ubuntu bionic/main amd64 zlib1g-dev amd64 1:1.2.11.dfsg-0ubuntu2 [176 kB]
    proxy: Get:21 http://mirror.transip.net/ubuntu/ubuntu bionic/main amd64 libharfbuzz-icu0 amd64 1.7.2-1ubuntu1 [5,604 B]
    proxy: Get:24 https://mirror.nl.leaseweb.net/ubuntu bionic-updates/main amd64 libiculx60 amd64 60.2-3ubuntu3.1 [19.0 kB]
    proxy: Get:22 http://mirror.amsiohosting.net/archive.ubuntu.com bionic/main amd64 libharfbuzz-gobject0 amd64 1.7.2-1ubuntu1 [13.4 kB]
    proxy: Get:32 http://mirror.amsiohosting.net/archive.ubuntu.com bionic-updates/main amd64 libpython3-dev amd64 3.6.7-1~18.04 [7,328 B]
    proxy: Get:41 http://mirror.amsiohosting.net/archive.ubuntu.com bionic/main amd64 libffi-dev amd64 3.2.1-8 [156 kB]
    proxy: Get:15 https://mirror.erickochen.nl/ubuntu bionic/main amd64 libpcrecpp0v5 amd64 2:8.39-9 [15.3 kB]
    proxy: Get:36 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 libxslt1-dev amd64 1.1.29-5ubuntu0.2 [407 kB]
    proxy: Get:12 https://mirror.nl.bontekoe.technology/ubuntu bionic-updates/main amd64 libglib2.0-dev-bin amd64 2.56.4-0ubuntu0.18.04.8 [102 kB]
    proxy: Get:16 http://ubuntu.mirror.cambrium.nl/ubuntu bionic/main amd64 libpcre3-dev amd64 2:8.39-9 [537 kB]
    proxy: Get:25 https://mirror.nl.bontekoe.technology/ubuntu bionic/main amd64 libicu-le-hb-dev amd64 1.0.3+git161113-4 [29.5 kB]
    proxy: Get:5 http://mirror.serverion.com/ubuntu bionic/main amd64 dh-python all 3.20180325ubuntu2 [89.2 kB]
    proxy: Get:23 https://mirror.erickochen.nl/ubuntu bionic/main amd64 libicu-le-hb0 amd64 1.0.3+git161113-4 [14.3 kB]
    proxy: Get:14 http://nl3.archive.ubuntu.com/ubuntu bionic/main amd64 libpcre32-3 amd64 2:8.39-9 [138 kB]
    proxy: Get:17 http://ubuntu.mirror.true.nl/ubuntu bionic/main amd64 pkg-config amd64 0.29.1-0ubuntu2 [45.0 kB]
    proxy: Get:19 http://ubuntu.mirror.true.nl/ubuntu bionic-updates/main amd64 libglib2.0-dev amd64 2.56.4-0ubuntu0.18.04.8 [1,386 kB]
    proxy: Get:27 http://nl3.archive.ubuntu.com/ubuntu bionic/main amd64 libharfbuzz-dev amd64 1.7.2-1ubuntu1 [302 kB]
    proxy: Get:37 http://nl3.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 python-pip-whl all 9.0.1-2.3~ubuntu1.18.04.5 [1,653 kB]
    proxy: Get:13 http://nl.archive.ubuntu.com/ubuntu bionic/main amd64 libpcre16-3 amd64 2:8.39-9 [147 kB]
    proxy: Get:20 http://ftp.tudelft.nl/archive.ubuntu.com bionic/main amd64 libgraphite2-dev amd64 1.3.11-2 [14.5 kB]
    proxy: Get:28 http://mirror.nforce.com/pub/linux/ubuntu bionic-updates/main amd64 libjpeg-turbo8-dev amd64 1.5.2-0ubuntu5.18.04.4 [225 kB]
    proxy: Get:26 http://nl.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libicu-dev amd64 60.2-3ubuntu3.1 [8,889 kB]
    proxy: Get:29 http://mirror.previder.nl/ubuntu bionic/main amd64 libjpeg8 amd64 8c-2ubuntu8 [2,194 B]
    proxy: Get:30 http://ubuntu.mirror.true.nl/ubuntu bionic/main amd64 libjpeg8-dev amd64 8c-2ubuntu8 [1,552 B]
    proxy: Get:31 http://ftp.nluug.nl/os/Linux/distr/ubuntu bionic-updates/main amd64 libpython3.6-dev amd64 3.6.9-1~18.04ubuntu1.4 [44.9 MB]
    proxy: Get:33 http://ftp.tudelft.nl/archive.ubuntu.com bionic-updates/main amd64 libssl-dev amd64 1.1.1-1ubuntu2.1~18.04.9 [1,566 kB]
    proxy: Get:34 http://mirror.1000mbps.com/ubuntu bionic-updates/main amd64 libxml2-dev amd64 2.9.4+dfsg1-6.1ubuntu1.4 [757 kB]
    proxy: Get:35 http://mirror.nl.datapacket.com/ubuntu bionic-updates/main amd64 libxslt1.1 amd64 1.1.29-5ubuntu0.2 [150 kB]
    proxy: Get:38 http://ftp.nluug.nl/os/Linux/distr/ubuntu bionic-updates/main amd64 python3.6-dev amd64 3.6.9-1~18.04ubuntu1.4 [508 kB]
    proxy: Get:39 http://ubuntu.mirror.true.nl/ubuntu bionic-updates/main amd64 python3-dev amd64 3.6.7-1~18.04 [1,288 B]
    proxy: Get:40 http://mirror.vpgrp.io/ubuntu bionic-updates/universe amd64 python3-pip all 9.0.1-2.3~ubuntu1.18.04.5 [114 kB]
    proxy: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    proxy: Fetched 63.4 MB in 17s (3,687 kB/s)
    proxy: Selecting previously unselected package libjpeg-turbo8:amd64.
(Reading database ... 100213 files and directories currently installed.)
    proxy: Preparing to unpack .../00-libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_amd64.deb ...
    proxy: Unpacking libjpeg-turbo8:amd64 (1.5.2-0ubuntu5.18.04.4) ...
    proxy: Selecting previously unselected package python3-lib2to3.
    proxy: Preparing to unpack .../01-python3-lib2to3_3.6.9-1~18.04_all.deb ...
    proxy: Unpacking python3-lib2to3 (3.6.9-1~18.04) ...
    proxy: Selecting previously unselected package python3-distutils.
    proxy: Preparing to unpack .../02-python3-distutils_3.6.9-1~18.04_all.deb ...
    proxy: Unpacking python3-distutils (3.6.9-1~18.04) ...
    proxy: Selecting previously unselected package dh-python.
    proxy: Preparing to unpack .../03-dh-python_3.20180325ubuntu2_all.deb ...
    proxy: Unpacking dh-python (3.20180325ubuntu2) ...
    proxy: Selecting previously unselected package libgraphite2-3:amd64.
    proxy: Preparing to unpack .../04-libgraphite2-3_1.3.11-2_amd64.deb ...
    proxy: Unpacking libgraphite2-3:amd64 (1.3.11-2) ...
    proxy: Selecting previously unselected package libharfbuzz0b:amd64.
    proxy: Preparing to unpack .../05-libharfbuzz0b_1.7.2-1ubuntu1_amd64.deb ...
    proxy: Unpacking libharfbuzz0b:amd64 (1.7.2-1ubuntu1) ...
    proxy: Selecting previously unselected package gir1.2-harfbuzz-0.0:amd64.
    proxy: Preparing to unpack .../06-gir1.2-harfbuzz-0.0_1.7.2-1ubuntu1_amd64.deb ...
    proxy: Unpacking gir1.2-harfbuzz-0.0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Selecting previously unselected package icu-devtools.
    proxy: Preparing to unpack .../07-icu-devtools_60.2-3ubuntu3.1_amd64.deb ...
    proxy: Unpacking icu-devtools (60.2-3ubuntu3.1) ...
    proxy: Selecting previously unselected package libexpat1-dev:amd64.
    proxy: Preparing to unpack .../08-libexpat1-dev_2.2.5-3ubuntu0.2_amd64.deb ...
    proxy: Unpacking libexpat1-dev:amd64 (2.2.5-3ubuntu0.2) ...
    proxy: Selecting previously unselected package libglib2.0-bin.
    proxy: Preparing to unpack .../09-libglib2.0-bin_2.56.4-0ubuntu0.18.04.8_amd64.deb ...
    proxy: Unpacking libglib2.0-bin (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Selecting previously unselected package libglib2.0-dev-bin.
    proxy: Preparing to unpack .../10-libglib2.0-dev-bin_2.56.4-0ubuntu0.18.04.8_amd64.deb ...
    proxy: Unpacking libglib2.0-dev-bin (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Selecting previously unselected package libpcre16-3:amd64.
    proxy: Preparing to unpack .../11-libpcre16-3_2%3a8.39-9_amd64.deb ...
    proxy: Unpacking libpcre16-3:amd64 (2:8.39-9) ...
    proxy: Selecting previously unselected package libpcre32-3:amd64.
    proxy: Preparing to unpack .../12-libpcre32-3_2%3a8.39-9_amd64.deb ...
    proxy: Unpacking libpcre32-3:amd64 (2:8.39-9) ...
    proxy: Selecting previously unselected package libpcrecpp0v5:amd64.
    proxy: Preparing to unpack .../13-libpcrecpp0v5_2%3a8.39-9_amd64.deb ...
    proxy: Unpacking libpcrecpp0v5:amd64 (2:8.39-9) ...
    proxy: Selecting previously unselected package libpcre3-dev:amd64.
    proxy: Preparing to unpack .../14-libpcre3-dev_2%3a8.39-9_amd64.deb ...
    proxy: Unpacking libpcre3-dev:amd64 (2:8.39-9) ...
    proxy: Selecting previously unselected package pkg-config.
    proxy: Preparing to unpack .../15-pkg-config_0.29.1-0ubuntu2_amd64.deb ...
    proxy: Unpacking pkg-config (0.29.1-0ubuntu2) ...
    proxy: Selecting previously unselected package zlib1g-dev:amd64.
    proxy: Preparing to unpack .../16-zlib1g-dev_1%3a1.2.11.dfsg-0ubuntu2_amd64.deb ...
    proxy: Unpacking zlib1g-dev:amd64 (1:1.2.11.dfsg-0ubuntu2) ...
    proxy: Selecting previously unselected package libglib2.0-dev:amd64.
    proxy: Preparing to unpack .../17-libglib2.0-dev_2.56.4-0ubuntu0.18.04.8_amd64.deb ...
    proxy: Unpacking libglib2.0-dev:amd64 (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Selecting previously unselected package libgraphite2-dev:amd64.
    proxy: Preparing to unpack .../18-libgraphite2-dev_1.3.11-2_amd64.deb ...
    proxy: Unpacking libgraphite2-dev:amd64 (1.3.11-2) ...
    proxy: Selecting previously unselected package libharfbuzz-icu0:amd64.
    proxy: Preparing to unpack .../19-libharfbuzz-icu0_1.7.2-1ubuntu1_amd64.deb ...
    proxy: Unpacking libharfbuzz-icu0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Selecting previously unselected package libharfbuzz-gobject0:amd64.
    proxy: Preparing to unpack .../20-libharfbuzz-gobject0_1.7.2-1ubuntu1_amd64.deb ...
    proxy: Unpacking libharfbuzz-gobject0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Selecting previously unselected package libicu-le-hb0:amd64.
    proxy: Preparing to unpack .../21-libicu-le-hb0_1.0.3+git161113-4_amd64.deb ...
    proxy: Unpacking libicu-le-hb0:amd64 (1.0.3+git161113-4) ...
    proxy: Selecting previously unselected package libiculx60:amd64.
    proxy: Preparing to unpack .../22-libiculx60_60.2-3ubuntu3.1_amd64.deb ...
    proxy: Unpacking libiculx60:amd64 (60.2-3ubuntu3.1) ...
    proxy: Selecting previously unselected package libicu-le-hb-dev:amd64.
    proxy: Preparing to unpack .../23-libicu-le-hb-dev_1.0.3+git161113-4_amd64.deb ...
    proxy: Unpacking libicu-le-hb-dev:amd64 (1.0.3+git161113-4) ...
    proxy: Selecting previously unselected package libicu-dev.
    proxy: Preparing to unpack .../24-libicu-dev_60.2-3ubuntu3.1_amd64.deb ...
    proxy: Unpacking libicu-dev (60.2-3ubuntu3.1) ...
    proxy: Selecting previously unselected package libharfbuzz-dev:amd64.
    proxy: Preparing to unpack .../25-libharfbuzz-dev_1.7.2-1ubuntu1_amd64.deb ...
    proxy: Unpacking libharfbuzz-dev:amd64 (1.7.2-1ubuntu1) ...
    proxy: Selecting previously unselected package libjpeg-turbo8-dev:amd64.
    proxy: Preparing to unpack .../26-libjpeg-turbo8-dev_1.5.2-0ubuntu5.18.04.4_amd64.deb ...
    proxy: Unpacking libjpeg-turbo8-dev:amd64 (1.5.2-0ubuntu5.18.04.4) ...
    proxy: Selecting previously unselected package libjpeg8:amd64.
    proxy: Preparing to unpack .../27-libjpeg8_8c-2ubuntu8_amd64.deb ...
    proxy: Unpacking libjpeg8:amd64 (8c-2ubuntu8) ...
    proxy: Selecting previously unselected package libjpeg8-dev:amd64.
    proxy: Preparing to unpack .../28-libjpeg8-dev_8c-2ubuntu8_amd64.deb ...
    proxy: Unpacking libjpeg8-dev:amd64 (8c-2ubuntu8) ...
    proxy: Selecting previously unselected package libpython3.6-dev:amd64.
    proxy: Preparing to unpack .../29-libpython3.6-dev_3.6.9-1~18.04ubuntu1.4_amd64.deb ...
    proxy: Unpacking libpython3.6-dev:amd64 (3.6.9-1~18.04ubuntu1.4) ...
    proxy: Selecting previously unselected package libpython3-dev:amd64.
    proxy: Preparing to unpack .../30-libpython3-dev_3.6.7-1~18.04_amd64.deb ...
    proxy: Unpacking libpython3-dev:amd64 (3.6.7-1~18.04) ...
    proxy: Selecting previously unselected package libssl-dev:amd64.
    proxy: Preparing to unpack .../31-libssl-dev_1.1.1-1ubuntu2.1~18.04.9_amd64.deb ...
    proxy: Unpacking libssl-dev:amd64 (1.1.1-1ubuntu2.1~18.04.9) ...
    proxy: Selecting previously unselected package libxml2-dev:amd64.
    proxy: Preparing to unpack .../32-libxml2-dev_2.9.4+dfsg1-6.1ubuntu1.4_amd64.deb ...
    proxy: Unpacking libxml2-dev:amd64 (2.9.4+dfsg1-6.1ubuntu1.4) ...
    proxy: Selecting previously unselected package libxslt1.1:amd64.
    proxy: Preparing to unpack .../33-libxslt1.1_1.1.29-5ubuntu0.2_amd64.deb ...
    proxy: Unpacking libxslt1.1:amd64 (1.1.29-5ubuntu0.2) ...
    proxy: Selecting previously unselected package libxslt1-dev:amd64.
    proxy: Preparing to unpack .../34-libxslt1-dev_1.1.29-5ubuntu0.2_amd64.deb ...
    proxy: Unpacking libxslt1-dev:amd64 (1.1.29-5ubuntu0.2) ...
    proxy: Selecting previously unselected package python-pip-whl.
    proxy: Preparing to unpack .../35-python-pip-whl_9.0.1-2.3~ubuntu1.18.04.5_all.deb ...
    proxy: Unpacking python-pip-whl (9.0.1-2.3~ubuntu1.18.04.5) ...
    proxy: Selecting previously unselected package python3.6-dev.
    proxy: Preparing to unpack .../36-python3.6-dev_3.6.9-1~18.04ubuntu1.4_amd64.deb ...
    proxy: Unpacking python3.6-dev (3.6.9-1~18.04ubuntu1.4) ...
    proxy: Selecting previously unselected package python3-dev.
    proxy: Preparing to unpack .../37-python3-dev_3.6.7-1~18.04_amd64.deb ...
    proxy: Unpacking python3-dev (3.6.7-1~18.04) ...
    proxy: Selecting previously unselected package python3-pip.
    proxy: Preparing to unpack .../38-python3-pip_9.0.1-2.3~ubuntu1.18.04.5_all.deb ...
    proxy: Unpacking python3-pip (9.0.1-2.3~ubuntu1.18.04.5) ...
    proxy: Selecting previously unselected package libffi-dev:amd64.
    proxy: Preparing to unpack .../39-libffi-dev_3.2.1-8_amd64.deb ...
    proxy: Unpacking libffi-dev:amd64 (3.2.1-8) ...
    proxy: Setting up python-pip-whl (9.0.1-2.3~ubuntu1.18.04.5) ...
    proxy: Setting up libssl-dev:amd64 (1.1.1-1ubuntu2.1~18.04.9) ...
    proxy: Setting up libffi-dev:amd64 (3.2.1-8) ...
    proxy: Setting up libjpeg-turbo8:amd64 (1.5.2-0ubuntu5.18.04.4) ...
    proxy: Setting up libgraphite2-3:amd64 (1.3.11-2) ...
    proxy: Setting up libxslt1.1:amd64 (1.1.29-5ubuntu0.2) ...
    proxy: Setting up pkg-config (0.29.1-0ubuntu2) ...
    proxy: Setting up libjpeg-turbo8-dev:amd64 (1.5.2-0ubuntu5.18.04.4) ...
    proxy: Setting up libexpat1-dev:amd64 (2.2.5-3ubuntu0.2) ...
    proxy: Setting up libpcrecpp0v5:amd64 (2:8.39-9) ...
    proxy: Setting up libpcre32-3:amd64 (2:8.39-9) ...
    proxy: Setting up icu-devtools (60.2-3ubuntu3.1) ...
    proxy: Setting up libpcre16-3:amd64 (2:8.39-9) ...
    proxy: Setting up python3-lib2to3 (3.6.9-1~18.04) ...
    proxy: Setting up libglib2.0-bin (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Setting up libgraphite2-dev:amd64 (1.3.11-2) ...
    proxy: Setting up python3-distutils (3.6.9-1~18.04) ...
    proxy: Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-0ubuntu2) ...
    proxy: Setting up libjpeg8:amd64 (8c-2ubuntu8) ...
    proxy: Setting up libpcre3-dev:amd64 (2:8.39-9) ...
    proxy: Setting up libglib2.0-dev-bin (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Setting up libharfbuzz0b:amd64 (1.7.2-1ubuntu1) ...
    proxy: Setting up libpython3.6-dev:amd64 (3.6.9-1~18.04ubuntu1.4) ...
    proxy: Setting up libglib2.0-dev:amd64 (2.56.4-0ubuntu0.18.04.8) ...
    proxy: Setting up libjpeg8-dev:amd64 (8c-2ubuntu8) ...
    proxy: Setting up gir1.2-harfbuzz-0.0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Setting up python3-pip (9.0.1-2.3~ubuntu1.18.04.5) ...
    proxy: Setting up python3.6-dev (3.6.9-1~18.04ubuntu1.4) ...
    proxy: Setting up dh-python (3.20180325ubuntu2) ...
    proxy: Setting up libharfbuzz-gobject0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Setting up libpython3-dev:amd64 (3.6.7-1~18.04) ...
    proxy: Setting up libharfbuzz-icu0:amd64 (1.7.2-1ubuntu1) ...
    proxy: Setting up libicu-le-hb0:amd64 (1.0.3+git161113-4) ...
    proxy: Setting up python3-dev (3.6.7-1~18.04) ...
    proxy: Setting up libiculx60:amd64 (60.2-3ubuntu3.1) ...
    proxy: Processing triggers for install-info (6.5.0.dfsg.1-2) ...
    proxy: Processing triggers for libglib2.0-0:amd64 (2.56.4-0ubuntu0.18.04.8) ...
    proxy: No schema files found: doing nothing.
    proxy: Processing triggers for libc-bin (2.27-3ubuntu1.4) ...
    proxy: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    proxy: Setting up libharfbuzz-dev:amd64 (1.7.2-1ubuntu1) ...
    proxy: Setting up libicu-le-hb-dev:amd64 (1.0.3+git161113-4) ...
    proxy: Setting up libicu-dev (60.2-3ubuntu3.1) ...
    proxy: Setting up libxml2-dev:amd64 (2.9.4+dfsg1-6.1ubuntu1.4) ...
    proxy: Setting up libxslt1-dev:amd64 (1.1.29-5ubuntu0.2) ...
    proxy: Collecting setuptools
    proxy:   Downloading https://files.pythonhosted.org/packages/bd/25/5bdf7f1adeebd4e3fa76b2e2f045ae53ee208e40a4231ad0f0c3007e4353/setuptools-57.4.0-py3-none-any.whl (819kB)
    proxy: Installing collected packages: setuptools
    proxy: Successfully installed setuptools-57.4.0
    proxy: Collecting mitmproxy
    proxy:   Downloading https://files.pythonhosted.org/packages/51/86/d1f899804c9903c8ac0e0429746f0cbf25695637d9969fe8c66367c8931c/mitmproxy-5.3.0-py3-none-any.whl (1.1MB)
    proxy: Collecting pyparsing<2.5,>=2.4.2 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/8a/bb/488841f56197b13700afd5658fc279a2025a39e22449b7cf29864669b15d/pyparsing-2.4.7-py2.py3-none-any.whl (67kB)
    proxy: Collecting publicsuffix2<3,>=2.20190812 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/9d/16/053c2945c5e3aebeefb4ccd5c5e7639e38bc30ad1bdc7ce86c6d01707726/publicsuffix2-2.20191221-py2.py3-none-any.whl (89kB)
    proxy: Collecting ruamel.yaml<0.17,>=0.16 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/ed/c3/4c823dac2949a6baf36a4987d04c50d30184147393ba6f4bfb4c67d15a13/ruamel.yaml-0.16.13-py2.py3-none-any.whl (111kB)
    proxy: Collecting cryptography<3.3,>=3.2 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/08/31/c43f1e45b4a5ebac13ff038a3f167ba3c7432f6dc8683ea504f5af9265eb/cryptography-3.2.1-cp35-abi3-manylinux1_x86_64.whl (2.6MB)
    proxy: Collecting click<8,>=7.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/d2/3d/fa76db83bf75c4f8d338c2fd15c8d33fdd7ad23a9b5e57eb6c5de26b430e/click-7.1.2-py2.py3-none-any.whl (82kB)
    proxy: Collecting msgpack<1.1.0,>=1.0.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/0c/0d/b1d9d32d03ce38ba5e2a37fbae850afd4530a14cc441e8335f1865a03705/msgpack-1.0.2-cp36-cp36m-manylinux1_x86_64.whl (272kB)
    proxy: Collecting h2<5,>=4.0; python_version >= "3.6.0" (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/bd/c2/5ffec707d0022208787908d9657f782ce35b653baa1e87abecf22a7cf513/h2-4.0.0-py3-none-any.whl (57kB)
    proxy: Collecting dataclasses>=0.7; python_version == "3.6" (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/fe/ca/75fac5856ab5cfa51bbbcefa250182e50441074fdc3f803f6e76451fab43/dataclasses-0.8-py3-none-any.whl
    proxy: Collecting pyperclip<1.9,>=1.6.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz
    proxy: Collecting certifi>=2019.9.11 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/05/1b/0a0dece0e8aa492a6ec9e4ad2fe366b511558cdc73fd3abc82ba7348e875/certifi-2021.5.30-py2.py3-none-any.whl (145kB)
    proxy: Collecting pyOpenSSL<19.2,>=19.1.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/9e/de/f8342b68fa9e981d348039954657bdf681b2ab93de27443be51865ffa310/pyOpenSSL-19.1.0-py2.py3-none-any.whl (53kB)
    proxy: Collecting zstandard<0.15,>=0.11 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/0a/88/80da15241aa8ad9b09c044b87ad62988fe72635612aad753feda16bd9d21/zstandard-0.14.1-cp36-cp36m-manylinux1_x86_64.whl (2.1MB)
    proxy: Collecting wsproto<0.16,>=0.14 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/d5/8b/96575a9a73591ce8e5e519375e30565bf9d299d0ced98a2970c225abedf4/wsproto-0.15.0-py2.py3-none-any.whl
    proxy: Collecting flask<1.2,>=1.1.1 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/e8/6d/994208daa354f68fd89a34a8bafbeaab26fda84e7af1e35bdaed02b667e6/Flask-1.1.4-py2.py3-none-any.whl (94kB)
    proxy: Collecting passlib<1.8,>=1.6.5 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/3b/a4/ab6b7589382ca3df236e03faa71deac88cae040af60c071a78d254a62172/passlib-1.7.4-py2.py3-none-any.whl (525kB)
    proxy: Collecting blinker<1.5,>=1.4 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/1b/51/e2a9f3b757eb802f61dc1f2b09c8c99f6eb01cf06416c0671253536517b6/blinker-1.4.tar.gz (111kB)
    proxy: Collecting sortedcontainers<2.3,>=2.1 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/23/8c/22a47a4bf8c5289e4ed946d2b0e4df62bca385b9599cc1e46878f2e2529c/sortedcontainers-2.2.2-py2.py3-none-any.whl
    proxy: Collecting protobuf<3.14,>=3.6.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/30/79/510974552cebff2ba04038544799450defe75e96ea5f1675dbf72cc8744f/protobuf-3.13.0-cp36-cp36m-manylinux1_x86_64.whl (1.3MB)
    proxy: Collecting hyperframe<7,>=6.0; python_version >= "3.6.0" (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/d7/de/85a784bcc4a3779d1753a7ec2dee5de90e18c7bcf402e71b51fcf150b129/hyperframe-6.0.1-py3-none-any.whl
    proxy: Collecting asgiref<3.4,>=3.2.10 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/17/8b/05e225d11154b8f5358e6a6d277679c9741ec0339d1e451c9cef687a9170/asgiref-3.3.4-py3-none-any.whl
    proxy: Collecting ldap3<2.9,>=2.8 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/01/e7/5f51c1f0261483b999da07b93d67a8dc073eee246b2b3508da521b6af0b0/ldap3-2.8.1-py2.py3-none-any.whl (423kB)
    proxy: Collecting pyasn1<0.5,>=0.3.1 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/62/1e/a94a8d635fa3ce4cfc7f506003548d0a2447ae76fd5ca53932970fe3053f/pyasn1-0.4.8-py2.py3-none-any.whl (77kB)
    proxy: Collecting urwid<2.2,>=2.1.1 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/94/3f/e3010f4a11c08a5690540f7ebd0b0d251cc8a456895b7e49be201f73540c/urwid-2.1.2.tar.gz (634kB)
    proxy: Collecting Brotli<1.1,>=1.0 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/b4/d3/7c98f05b7b9103e2f3a112ba42f269c798155b3e5404fb80bb8f823aaebe/Brotli-1.0.9-cp36-cp36m-manylinux1_x86_64.whl (357kB)
    proxy: Collecting tornado<7,>=4.3 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/01/d1/8750ad20cbcefb499bb8b405e243f83c2c89f78d139e6f8c8d800640f554/tornado-6.1-cp36-cp36m-manylinux1_x86_64.whl (427kB)
    proxy: Collecting kaitaistruct<0.10,>=0.7 (from mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/33/e1/c75484bce13509d2bb1118585cd832cff228ed99df81753028dbf8f1dbcb/kaitaistruct-0.9.tar.gz
    proxy: Collecting ruamel.yaml.clib>=0.1.2; platform_python_implementation == "CPython" and python_version < "3.10" (from ruamel.yaml<0.17,>=0.16->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/2a/25/5b1dfc832ef3b83576c546d1fb3e27f136022cdd1008aab290a1e28ef220/ruamel.yaml.clib-0.2.6-cp36-cp36m-manylinux1_x86_64.whl (552kB)
    proxy: Collecting six>=1.4.1 (from cryptography<3.3,>=3.2->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/d9/5a/e7c31adbe875f2abbb91bd84cf2dc52d792b5a01506781dbcf25c91daf11/six-1.16.0-py2.py3-none-any.whl
    proxy: Collecting cffi!=1.11.3,>=1.8 (from cryptography<3.3,>=3.2->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/f2/cd/3f5f059fed635d71047fa9ce507635088f982ab280fc24cde91d9afb9c1c/cffi-1.14.6-cp36-cp36m-manylinux1_x86_64.whl (401kB)
    proxy: Collecting hpack<5,>=4.0 (from h2<5,>=4.0; python_version >= "3.6.0"->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/d5/34/e8b383f35b77c402d28563d2b8f83159319b509bc5f760b15d60b0abf165/hpack-4.0.0-py3-none-any.whl
    proxy: Collecting h11>=0.8.1 (from wsproto<0.16,>=0.14->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/60/0f/7a0eeea938eaf61074f29fed9717f2010e8d0e0905d36b38d3275a1e4622/h11-0.12.0-py3-none-any.whl (54kB)
    proxy: Collecting itsdangerous<2.0,>=0.24 (from flask<1.2,>=1.1.1->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/76/ae/44b03b253d6fade317f32c24d100b3b35c2239807046a4c953c7b89fa49e/itsdangerous-1.1.0-py2.py3-none-any.whl
    proxy: Collecting Werkzeug<2.0,>=0.15 (from flask<1.2,>=1.1.1->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/cc/94/5f7079a0e00bd6863ef8f1da638721e9da21e5bacee597595b318f71d62e/Werkzeug-1.0.1-py2.py3-none-any.whl (298kB)
    proxy: Collecting Jinja2<3.0,>=2.10.1 (from flask<1.2,>=1.1.1->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/7e/c2/1eece8c95ddbc9b1aeb64f5783a9e07a286de42191b7204d67b7496ddf35/Jinja2-2.11.3-py2.py3-none-any.whl (125kB)
    proxy: Requirement already satisfied: setuptools in /usr/local/lib/python3.6/dist-packages (from protobuf<3.14,>=3.6.0->mitmproxy)
    proxy: Collecting typing-extensions; python_version < "3.8" (from asgiref<3.4,>=3.2.10->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/2e/35/6c4fff5ab443b57116cb1aad46421fb719bed2825664e8fe77d66d99bcbc/typing_extensions-3.10.0.0-py3-none-any.whl
    proxy: Collecting pycparser (from cffi!=1.11.3,>=1.8->cryptography<3.3,>=3.2->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/ae/e7/d9c3a176ca4b02024debf82342dab36efadfc5776f9c8db077e8f6e71821/pycparser-2.20-py2.py3-none-any.whl (112kB)
    proxy: Collecting MarkupSafe>=0.23 (from Jinja2<3.0,>=2.10.1->flask<1.2,>=1.1.1->mitmproxy)
    proxy:   Downloading https://files.pythonhosted.org/packages/fc/d6/57f9a97e56447a1e340f8574836d3b636e2c14de304943836bd645fa9c7e/MarkupSafe-2.0.1-cp36-cp36m-manylinux1_x86_64.whl
    proxy: Building wheels for collected packages: pyperclip, blinker, urwid, kaitaistruct
    proxy:   Running setup.py bdist_wheel for pyperclip: started
    proxy:   Running setup.py bdist_wheel for pyperclip: finished with status 'error'
    proxy:   Complete output from command /usr/bin/python3 -u -c "import setuptools, tokenize;__file__='/tmp/pip-build-p6bfl219/pyperclip/setup.py';f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" bdist_wheel -d /tmp/tmpokx7cp_ipip-wheel- --python-tag cp36:
    proxy:   usage: -c [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
    proxy:      or: -c --help [cmd1 cmd2 ...]
    proxy:      or: -c --help-commands
    proxy:      or: -c cmd --help
    proxy: 
    proxy:   error: invalid command 'bdist_wheel'
    proxy: 
    proxy:   ----------------------------------------
    proxy:   Failed building wheel for pyperclip
    proxy:   Running setup.py clean for pyperclip
    proxy:   Running setup.py bdist_wheel for blinker: started
    proxy:   Running setup.py bdist_wheel for blinker: finished with status 'error'
    proxy:   Complete output from command /usr/bin/python3 -u -c "import setuptools, tokenize;__file__='/tmp/pip-build-p6bfl219/blinker/setup.py';f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" bdist_wheel -d /tmp/tmpye1dq1rppip-wheel- --python-tag cp36:
    proxy:   /usr/local/lib/python3.6/dist-packages/setuptools/dist.py:700: UserWarning: Usage of dash-separated 'upload-dir' will not be supported in future versions. Please use the underscore name 'upload_dir' instead
    proxy:     % (opt, underscore_opt))
    proxy:   usage: -c [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
    proxy:      or: -c --help [cmd1 cmd2 ...]
    proxy:      or: -c --help-commands
    proxy:      or: -c cmd --help
    proxy: 
    proxy:   error: invalid command 'bdist_wheel'
    proxy: 
    proxy:   ----------------------------------------
    proxy:   Failed building wheel for blinker
    proxy:   Running setup.py clean for blinker
    proxy:   Running setup.py bdist_wheel for urwid: started
    proxy:   Running setup.py bdist_wheel for urwid: finished with status 'error'
    proxy:   Complete output from command /usr/bin/python3 -u -c "import setuptools, tokenize;__file__='/tmp/pip-build-p6bfl219/urwid/setup.py';f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" bdist_wheel -d /tmp/tmpq64h00vspip-wheel- --python-tag cp36:
    proxy:   Traceback (most recent call last):
    proxy:     File "/usr/lib/python3.6/distutils/dist.py", line 528, in _parse_command_opts
    proxy:       cmd_class = self.get_command_class(command)
    proxy:     File "/usr/local/lib/python3.6/dist-packages/setuptools/dist.py", line 857, in get_command_class
    proxy:       return _Distribution.get_command_class(self, command)
    proxy:     File "/usr/lib/python3.6/distutils/dist.py", line 832, in get_command_class
    proxy:       raise DistutilsModuleError("invalid command '%s'" % command)
    proxy:   distutils.errors.DistutilsModuleError: invalid command 'bdist_wheel'
    proxy: 
    proxy:   During handling of the above exception, another exception occurred:
    proxy: 
    proxy:   Traceback (most recent call last):
    proxy:     File "/usr/lib/python3.6/distutils/core.py", line 134, in setup
    proxy:       ok = dist.parse_command_line()
    proxy:     File "/usr/lib/python3.6/distutils/dist.py", line 472, in parse_command_line
    proxy:       args = self._parse_command_opts(parser, args)
    proxy:     File "/usr/local/lib/python3.6/dist-packages/setuptools/dist.py", line 1015, in _parse_command_opts
    proxy:       nargs = _Distribution._parse_command_opts(self, parser, args)
    proxy:     File "/usr/lib/python3.6/distutils/dist.py", line 530, in _parse_command_opts
    proxy:       raise DistutilsArgError(msg)
    proxy:   distutils.errors.DistutilsArgError: invalid command 'bdist_wheel'
    proxy: 
    proxy:   During handling of the above exception, another exception occurred:
    proxy: 
    proxy:   Traceback (most recent call last):
    proxy:     File "/tmp/pip-build-p6bfl219/urwid/setup.py", line 82, in <module>
    proxy:       setup(**setup_d)
    proxy:     File "/usr/local/lib/python3.6/dist-packages/setuptools/__init__.py", line 153, in setup
    proxy:       return distutils.core.setup(**attrs)
    proxy:     File "/usr/lib/python3.6/distutils/core.py", line 136, in setup
    proxy:       raise SystemExit(gen_usage(dist.script_name) + "\nerror: %s" % msg)
    proxy:   SystemExit: usage: -c [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
    proxy:      or: -c --help [cmd1 cmd2 ...]
    proxy:      or: -c --help-commands
    proxy:      or: -c cmd --help
    proxy: 
    proxy:   error: invalid command 'bdist_wheel'
    proxy:   Couldn\'t build the extension module, trying without it...
    proxy:   usage: -c [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
    proxy:      or: -c --help [cmd1 cmd2 ...]
    proxy:      or: -c --help-commands
    proxy:      or: -c cmd --help
    proxy: 
    proxy:   error: invalid command 'bdist_wheel'
    proxy: 
    proxy:   ----------------------------------------
    proxy:   Failed building wheel for urwid
    proxy:   Running setup.py clean for urwid
    proxy:   Running setup.py bdist_wheel for kaitaistruct: started
    proxy:   Running setup.py bdist_wheel for kaitaistruct: finished with status 'error'
    proxy:   Complete output from command /usr/bin/python3 -u -c "import setuptools, tokenize;__file__='/tmp/pip-build-p6bfl219/kaitaistruct/setup.py';f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" bdist_wheel -d /tmp/tmp_qivbw7zpip-wheel- --python-tag cp36:
    proxy:   usage: -c [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
    proxy:      or: -c --help [cmd1 cmd2 ...]
    proxy:      or: -c --help-commands
    proxy:      or: -c cmd --help
    proxy: 
    proxy:   error: invalid command 'bdist_wheel'
    proxy: 
    proxy:   ----------------------------------------
    proxy:   Failed building wheel for kaitaistruct
    proxy:   Running setup.py clean for kaitaistruct
    proxy: Failed to build pyperclip blinker urwid kaitaistruct
    proxy: Installing collected packages: pyparsing, publicsuffix2, ruamel.yaml.clib, ruamel.yaml, six, pycparser, cffi, cryptography, click, msgpack, hyperframe, hpack, h2, dataclasses, pyperclip, certifi, pyOpenSSL, zstandard, h11, wsproto, itsdangerous, Werkzeug, MarkupSafe, Jinja2, flask, passlib, blinker, sortedcontainers, protobuf, typing-extensions, asgiref, pyasn1, ldap3, urwid, Brotli, tornado, kaitaistruct, mitmproxy
    proxy:   Running setup.py install for pyperclip: started
    proxy:     Running setup.py install for pyperclip: finished with status 'done'
    proxy:   Running setup.py install for blinker: started
    proxy:     Running setup.py install for blinker: finished with status 'done'
    proxy:   Running setup.py install for urwid: started
    proxy:     Running setup.py install for urwid: finished with status 'done'
    proxy:   Running setup.py install for kaitaistruct: started
    proxy:     Running setup.py install for kaitaistruct: finished with status 'done'
    proxy: Successfully installed Brotli-1.0.9 Jinja2-2.11.3 MarkupSafe-2.0.1 Werkzeug-1.0.1 asgiref-3.3.4 blinker-1.4 certifi-2021.5.30 cffi-1.14.6 click-7.1.2 cryptography-3.2.1 dataclasses-0.8 flask-1.1.4 h11-0.12.0 h2-4.0.0 hpack-4.0.0 hyperframe-6.0.1 itsdangerous-1.1.0 kaitaistruct-0.9 ldap3-2.8.1 mitmproxy-5.3.0 msgpack-1.0.2 passlib-1.7.4 protobuf-3.13.0 publicsuffix2-2.20191221 pyOpenSSL-19.1.0 pyasn1-0.4.8 pycparser-2.20 pyparsing-2.4.7 pyperclip-1.8.2 ruamel.yaml-0.16.13 ruamel.yaml.clib-0.2.6 six-1.16.0 sortedcontainers-2.2.2 tornado-6.1 typing-extensions-3.10.0.0 urwid-2.1.2 wsproto-0.15.0 zstandard-0.14.1
    proxy: Created symlink /etc/systemd/system/multi-user.target.wants/mitmproxy.service → /etc/systemd/system/mitmproxy.service.
==> tfe: Importing base box 'aakulov/bionic64'...
==> tfe: Matching MAC address for NAT networking...
==> tfe: Checking if box 'aakulov/bionic64' version '21.07.21' is up to date...
==> tfe: Setting the name of the VM: tfe-vagrant-proxy-https_tfe_1626870211289_86478
==> tfe: Fixed port collision for 22 => 2222. Now on port 2200.
==> tfe: Clearing any previously set network interfaces...
==> tfe: Preparing network interfaces based on configuration...
    tfe: Adapter 1: nat
    tfe: Adapter 2: hostonly
==> tfe: Forwarding ports...
    tfe: 22 (guest) => 2200 (host) (adapter 1)
==> tfe: Running 'pre-boot' VM customizations...
==> tfe: Booting VM...
==> tfe: Waiting for machine to boot. This may take a few minutes...
    tfe: SSH address: 127.0.0.1:2200
    tfe: SSH username: vagrant
    tfe: SSH auth method: private key
    tfe: 
    tfe: Vagrant insecure key detected. Vagrant will automatically replace
    tfe: this with a newly generated keypair for better security.
    tfe: 
    tfe: Inserting generated public key within guest...
    tfe: Removing insecure key from the guest if it\'s present...
    tfe: Key inserted! Disconnecting and reconnecting using new SSH key...
==> tfe: Machine booted and ready!
==> tfe: Checking for guest additions in VM...
==> tfe: Setting hostname...
==> tfe: Configuring and enabling network interfaces...
==> tfe: Mounting shared folders...
    tfe: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/tfe-vagrant-proxy-https
==> tfe: Running provisioner: shell...
    tfe: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210721-90922-4s0ake.sh
    tfe: # Self signed certificate generation
    tfe: Generating RSA private key, 4096 bit long modulus (2 primes)
    tfe: ............................................++++
    tfe: ...............................................++++
    tfe: e is 65537 (0x010001)
    tfe: Ignoring -days; not generating a certificate
    tfe: Generating a RSA private key
    tfe: ....+++++
    tfe: ...............................................+++++
    tfe: writing new private key to '192.168.56.33.nip.io.key'
    tfe: -----
    tfe: Signature ok
    tfe: subject=C = NL, L = AMS, O = HC, CN = 192.168.56.33.nip.io
    tfe: Getting CA Private Key
==> tfe: Running provisioner: shell...
    tfe: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210721-90922-pwkik1.sh
    tfe: # Removing default GW
    tfe: *   Trying 192.168.56.32...
    tfe: * TCP_NODELAY set
    tfe:   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
    tfe:                                  Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0* Connected to 192.168.56.32 (192.168.56.32) port 8080 (#0)
    tfe: > GET http://mitm.it/cert/pem HTTP/1.1
    tfe: > Host: mitm.it
    tfe: > User-Agent: curl/7.58.0
    tfe: > Accept: */*
    tfe: > Proxy-Connection: Keep-Alive
    tfe: >
    tfe: < HTTP/1.1 200 OK
    tfe: < content-type: application/x-x509-ca-cert
    tfe: < content-disposition: inline; filename=mitmproxy-ca-cert.pem
    tfe: < content-length: 1318
    tfe: <
    tfe: { [1318 bytes data]
100  1318  100  1318    0     0  87866      0 --:--:-- --:--:-- --:--:-- 87866
    tfe: * Connection #0 to host 192.168.56.32 left intact
    tfe: Updating certificates in /etc/ssl/certs...
    tfe: 1 added, 0 removed; done.
    tfe: Running hooks in /etc/ca-certificates/update.d...
    tfe: done.
    tfe: # Downloading installation script
######################################################################## 100.0%        
    tfe: # Running installation script
    tfe: Determining local address
    tfe: The installer will use local address '192.168.56.33' (from parameter)
    tfe: The installer will use the proxy at 'http://192.168.56.32:8080/' (imported from env var 'HTTPS_PROXY')
    tfe: Installing docker version 19.03.8 from https://get.replicated.com/docker-install.sh
    tfe: # Executing docker install script, commit: b50fac9
    tfe: + sh -c apt-get update -qq >/dev/null
    tfe: + sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null
    tfe: + sh -c curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | apt-key add -qq - >/dev/null
    tfe: Warning: apt-key output should not be parsed (stdout is not a terminal)
    tfe: + sh -c echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" > /etc/apt/sources.list.d/docker.list
    tfe: + sh -c apt-get update -qq >/dev/null
    tfe: INFO: Searching repository for VERSION '19.03.8'
    tfe: INFO: apt-cache madison 'docker-ce' | grep '19.03.8.*-0~ubuntu' | head -1 | awk '{$1=$1};1' | cut -d' ' -f 3
    tfe: + [ -n 5:19.03.8~3-0~ubuntu-bionic ]
    tfe: + sh -c apt-get install -y -qq --no-install-recommends docker-ce-cli=5:19.03.8~3-0~ubuntu-bionic >/dev/null
    tfe: + sh -c apt-get install -y -qq --no-install-recommends docker-ce=5:19.03.8~3-0~ubuntu-bionic >/dev/null
    tfe: + sh -c docker version
    tfe: Client: Docker Engine - Community
    tfe:  Version:           19.03.8
    tfe:  API version:       1.40
    tfe:  Go version:        go1.12.17
    tfe:  Git commit:        afacb8b7f0
    tfe:  Built:             Wed Mar 11 01:25:46 2020
    tfe:  OS/Arch:           linux/amd64
    tfe:  Experimental:      false
    tfe: 
    tfe: Server: Docker Engine - Community
    tfe:  Engine:
    tfe:   Version:          19.03.8
    tfe:   API version:      1.40 (minimum version 1.12)
    tfe:   Go version:       go1.12.17
    tfe:   Git commit:       afacb8b7f0
    tfe:   Built:            Wed Mar 11 01:24:19 2020
    tfe:   OS/Arch:          linux/amd64
    tfe:   Experimental:     false
    tfe:  containerd:
    tfe:   Version:          1.4.8
    tfe:   GitCommit:        7eba5930496d9bbe375fdf71603e610ad737d2b2
    tfe:  runc:
    tfe:   Version:          1.0.0
    tfe:   GitCommit:        v1.0.0-0-g84113ee
    tfe:  docker-init:
    tfe:   Version:          0.18.0
    tfe:   GitCommit:        fec3683
    tfe: If you would like to use Docker as a non-root user, you should now consider
    tfe: adding your user to the "docker" group with something like:
    tfe: 
    tfe:   sudo usermod -aG docker your-user
    tfe: 
    tfe: Remember that you will have to log out and back in for this to take effect!
    tfe: 
    tfe: WARNING: Adding a user to the "docker" group will grant the ability to run
    tfe:          containers which can be used to obtain root privileges on the
    tfe:          docker host.
    tfe:          Refer to https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface
    tfe:          for more information.
    tfe: External script is finished
    tfe: Synchronizing state of docker.service with SysV service script with /lib/systemd/systemd-sysv-install.
    tfe: Executing: /lib/systemd/systemd-sysv-install enable docker
    tfe: 
    tfe: Running preflight checks...
    tfe: [INFO] / disk usage is at 14%
    tfe: [INFO] /var/lib/docker disk usage is at 1%
    tfe: [INFO] Docker is set with http proxy "http://192.168.56.32:8080/" and no proxy "127.0.0.1,172.17.0.1,192.168.56.33,localhost"
    tfe: [INFO] Docker http proxy not set
    tfe: [INFO] Docker using default seccomp profile
    tfe: [INFO] Docker using standard root directory
    tfe: [INFO] Docker icc (inter-container communication) enabled
    tfe: [INFO] Docker open files (nofile) ulimit not set
    tfe: [INFO] Docker userland proxy enabled
    tfe: [INFO] Firewalld is not active
    tfe: [INFO] Iptables chain INPUT default policy ACCEPT
    tfe: Pulling replicated and replicated-ui images
    tfe: stable-2.52.0: Pulling from replicated/replicated
    tfe: Image docker.io/replicated/replicated:stable-2.52.0 uses outdated schema1 manifest format. Please upgrade to a schema2 image for better future compatibility. More information at https://docs.docker.com/registry/spec/deprecated-schema-v1/
    tfe: 69692152171a: Pulling fs layer
    tfe: 4cec2ee532ca: Pulling fs layer
    tfe: 5e5336345ecc: Pulling fs layer
    tfe: 8c9af647b5fd: Pulling fs layer
    tfe: f29b1c17ff51: Pulling fs layer
    tfe: fce3e81d9123: Pulling fs layer
    tfe: d94558f8f63a: Pulling fs layer
    tfe: 657e54daabf4: Pulling fs layer
    tfe: dfa55743770a: Pulling fs layer
    tfe: 82a73fe0e9b9: Pulling fs layer
    tfe: 9c9b8421b4c8: Pulling fs layer
    tfe: fce3e81d9123: Waiting
    tfe: d94558f8f63a: Waiting
    tfe: 657e54daabf4: Waiting
    tfe: dfa55743770a: Waiting
    tfe: 82a73fe0e9b9: Waiting
    tfe: 9c9b8421b4c8: Waiting
    tfe: 8c9af647b5fd: Waiting
    tfe: f29b1c17ff51: Waiting
    tfe: 4cec2ee532ca: Verifying Checksum
    tfe: 4cec2ee532ca: Download complete
    tfe: 5e5336345ecc: Verifying Checksum
    tfe: 5e5336345ecc: Download complete
    tfe: 69692152171a: Download complete
    tfe: 69692152171a: Pull complete
    tfe: 4cec2ee532ca: Pull complete
    tfe: 5e5336345ecc: Pull complete
    tfe: f29b1c17ff51: Verifying Checksum
    tfe: f29b1c17ff51: Download complete
    tfe: fce3e81d9123: Verifying Checksum
    tfe: fce3e81d9123: Download complete
    tfe: 657e54daabf4: Verifying Checksum
    tfe: 657e54daabf4: Download complete
    tfe: 8c9af647b5fd: Verifying Checksum
    tfe: 8c9af647b5fd: Download complete
    tfe: 82a73fe0e9b9: Verifying Checksum
    tfe: 82a73fe0e9b9: Download complete
    tfe: 8c9af647b5fd: Pull complete
    tfe: d94558f8f63a: Verifying Checksum
    tfe: d94558f8f63a: Download complete
    tfe: f29b1c17ff51: Pull complete
    tfe: fce3e81d9123: Pull complete
    tfe: d94558f8f63a: Pull complete
    tfe: 9c9b8421b4c8: Verifying Checksum
    tfe: 9c9b8421b4c8: Download complete
    tfe: 657e54daabf4: Pull complete
    tfe: dfa55743770a: Verifying Checksum
    tfe: dfa55743770a: Download complete
    tfe: dfa55743770a: Pull complete
    tfe: 82a73fe0e9b9: Pull complete
    tfe: 9c9b8421b4c8: Pull complete
    tfe: Digest: sha256:d38833cb625b0e226471f59f8a894469e76c44035288d9a57560bb8620b114b4
    tfe: Status: Downloaded newer image for replicated/replicated:stable-2.52.0
    tfe: docker.io/replicated/replicated:stable-2.52.0
    tfe: stable-2.52.0: Pulling from replicated/replicated-ui
    tfe: Image docker.io/replicated/replicated-ui:stable-2.52.0 uses outdated schema1 manifest format. Please upgrade to a schema2 image for better future compatibility. More information at https://docs.docker.com/registry/spec/deprecated-schema-v1/
    tfe: 69692152171a: Already exists
    tfe: d26ac9469008: Pulling fs layer
    tfe: 92d885dd2446: Pulling fs layer
    tfe: 0a0630b58335: Pulling fs layer
    tfe: 8db0096a6f1e: Pulling fs layer
    tfe: 95d2036e9098: Pulling fs layer
    tfe: 8db0096a6f1e: Waiting
    tfe: 95d2036e9098: Waiting
    tfe: 92d885dd2446: Verifying Checksum
    tfe: 92d885dd2446: Download complete
    tfe: d26ac9469008: Verifying Checksum
    tfe: d26ac9469008: Download complete
    tfe: d26ac9469008: Pull complete
    tfe: 92d885dd2446: Pull complete
    tfe: 95d2036e9098: Verifying Checksum
    tfe: 95d2036e9098: Download complete
    tfe: 0a0630b58335: Download complete
    tfe: 8db0096a6f1e: Verifying Checksum
    tfe: 8db0096a6f1e: Download complete
    tfe: 0a0630b58335: Pull complete
    tfe: 8db0096a6f1e: Pull complete
    tfe: 95d2036e9098: Pull complete
    tfe: Digest: sha256:7c5a916b9e265fa23677b797d278c44ac9bab3ba6f402927cc1fa6a43e5d6348
    tfe: Status: Downloaded newer image for replicated/replicated-ui:stable-2.52.0
    tfe: docker.io/replicated/replicated-ui:stable-2.52.0
    tfe: Tagging replicated and replicated-ui images
    tfe: Stopping replicated and replicated-ui service
    tfe: Installing replicated and replicated-ui service
    tfe: Starting replicated and replicated-ui service
    tfe: Created symlink /etc/systemd/system/docker.service.wants/replicated.service → /etc/systemd/system/replicated.service.
    tfe: Created symlink /etc/systemd/system/docker.service.wants/replicated-ui.service → /etc/systemd/system/replicated-ui.service.
    tfe: Installing replicated command alias
    tfe: Installing local operator
    tfe: Installing local operator with command:
    tfe: curl -sSL -x http://192.168.56.32:8080/ https://get.replicated.com/operator?replicated_operator_tag=2.52.0
    tfe: Pulling latest replicated-operator image
    tfe: stable-2.52.0: Pulling from replicated/replicated-operator
    tfe: Image docker.io/replicated/replicated-operator:stable-2.52.0 uses outdated schema1 manifest format. Please upgrade to a schema2 image for better future compatibility. More information at https://docs.docker.com/registry/spec/deprecated-schema-v1/
    tfe: 69692152171a: Already exists
    tfe: b8d1591cc3e8: Pulling fs layer
    tfe: 99408039ae2c: Pulling fs layer
    tfe: f9266063add8: Pulling fs layer
    tfe: 3669a4e3d61c: Pulling fs layer
    tfe: 69bf04578910: Pulling fs layer
    tfe: bc03da138eb1: Pulling fs layer
    tfe: 3669a4e3d61c: Waiting
    tfe: 69bf04578910: Waiting
    tfe: bc03da138eb1: Waiting
    tfe: b8d1591cc3e8: Verifying Checksum
    tfe: b8d1591cc3e8: Download complete
    tfe: b8d1591cc3e8: Pull complete
    tfe: 99408039ae2c: Download complete
    tfe: 99408039ae2c: Pull complete
    tfe: f9266063add8: Verifying Checksum
    tfe: f9266063add8: Download complete
    tfe: 69bf04578910: Verifying Checksum
    tfe: 69bf04578910: Download complete
    tfe: f9266063add8: Pull complete
    tfe: bc03da138eb1: Verifying Checksum
    tfe: bc03da138eb1: Download complete
    tfe: 3669a4e3d61c: Download complete
    tfe: 3669a4e3d61c: Pull complete
    tfe: 69bf04578910: Pull complete
    tfe: bc03da138eb1: Pull complete
    tfe: Digest: sha256:bd80d36e0a6dfe0ef8a50e858db9680418a072cd53f084caf4b488a294d8fcb9
    tfe: Status: Downloaded newer image for replicated/replicated-operator:stable-2.52.0
    tfe: docker.io/replicated/replicated-operator:stable-2.52.0
    tfe: Tagging replicated-operator image
    tfe: Stopping replicated-operator service
    tfe: Installing replicated-operator service
    tfe: Starting replicated-operator service
    tfe: Created symlink /etc/systemd/system/docker.service.wants/replicated-operator.service → /etc/systemd/system/replicated-operator.service.
    tfe: 
    tfe: Operator installation successful
    tfe: 
    tfe: To continue the installation, visit the following URL in your browser:
    tfe: 
    tfe:   http://192.168.56.33:8800
    tfe: 

==> tfe: Machine 'tfe' has a post `vagrant up` message. This is a message
==> tfe: from the creator of the Vagrantfile, and not from Vagrant itself:
==> tfe: 
==> tfe: ------------------------------------------------------
==> tfe: TFE is installed
==> tfe: 
==> tfe: URL: https://192.168.56.33.nip.io:8800/
==> tfe: 
==> tfe: Password: Password1#
==> tfe: 
==> tfe: ------------------------------------------------------
==> tfe: 

```

## Usage

- In your browser open URL https://192.168.56.33.nip.io:8800/

- Click ```Advanced```

- Click ```Proceed to 192.168.56.33.nip.io (unsafe)```
  
 ![Proceed to 192.168.56.33.nip.io](https://github.com/antonakv/tfe-vagrant-proxy/raw/main/images/tfe-vagrant-4.png)

- Enter password ```Password1#``` and click ```Unlock```

 ![Unlock](https://github.com/antonakv/tfe-vagrant-proxy/raw/main/images/tfe-vagrant-2.png)

- Open URL https://192.168.56.33.nip.io:8800/dashboard

  ![Dashboard](https://github.com/antonakv/tfe-vagrant-proxy/raw/main/images/tfe-vagrant-7.png)
