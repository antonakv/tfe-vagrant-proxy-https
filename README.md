# TFE silent online installation using Vagrant

## Intro

This manual is dedicated to install Terraform Enterprise with online installation type using Vagrant.

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
aakulov-C02F20PGMD6R:tfe-vagrant-proxy (f-proxy*) $ vagrant up     
Bringing machine 'proxy' up with 'virtualbox' provider...
Bringing machine 'tfe' up with 'virtualbox' provider...
==> proxy: Importing base box 'aakulov/bionic64'...
==> proxy: Matching MAC address for NAT networking...
==> proxy: Checking if box 'aakulov/bionic64' version '21.05.27' is up to date...
==> proxy: Setting the name of the VM: tfe-vagrant-proxy_proxy_1626354014202_68538
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
    proxy: Removing insecure key from the guest if it's present...
    proxy: Key inserted! Disconnecting and reconnecting using new SSH key...
==> proxy: Machine booted and ready!
==> proxy: Checking for guest additions in VM...
==> proxy: Setting hostname...
==> proxy: Configuring and enabling network interfaces...
==> proxy: Mounting shared folders...
    proxy: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/tfe-vagrant-proxy
==> proxy: Running provisioner: shell...
    proxy: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210715-16563-hvyz54.sh
    proxy: # Installing squid proxy
    proxy: Reading package lists...
    proxy: Building dependency tree...
    proxy: Reading state information...
    proxy: The following additional packages will be installed:
    proxy:   libdbi-perl libecap3 libltdl7 squid-common squid-langpack ssl-cert
    proxy: Suggested packages:
    proxy:   libclone-perl libmldbm-perl libnet-daemon-perl libsql-statement-perl
    proxy:   squidclient squid-cgi squid-purge resolvconf smbclient winbindd
    proxy:   openssl-blacklist
    proxy: Recommended packages:
    proxy:   libcap2-bin
    proxy: The following NEW packages will be installed:
    proxy:   libdbi-perl libecap3 libltdl7 squid squid-common squid-langpack ssl-cert
    proxy: 0 upgraded, 7 newly installed, 0 to remove and 0 not upgraded.
    proxy: Need to get 3,331 kB of archives.
    proxy: After this operation, 13.0 MB of additional disk space will be used.
    proxy: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [901 B]
    proxy: Get:4 http://mirror.amsiohosting.net/archive.ubuntu.com bionic/main amd64 squid-langpack all 20170901-1 [137 kB]
    proxy: Get:3 http://mirror.eu.kamatera.com/ubuntu bionic/main amd64 libltdl7 amd64 2.4.6-2 [38.8 kB]
    proxy: Ign:5 http://ubuntu.mirror.cambrium.nl/ubuntu bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.1000mbps.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Get:2 https://mirror.nl.leaseweb.net/ubuntu bionic/main amd64 libecap3 amd64 1.0.1-3.2 [16.6 kB]
    proxy: Ign:5 http://nl.archive.ubuntu.com/ubuntu bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10
    proxy: Get:6 http://mirror.vpgrp.io/ubuntu bionic-updates/main amd64 libdbi-perl amd64 1.640-1ubuntu0.2 [724 kB]
    proxy: Ign:8 http://osmirror.rug.nl/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:5 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.serverion.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Get:7 http://nl3.archive.ubuntu.com/ubuntu bionic/main amd64 ssl-cert all 1.0.39 [17.0 kB]
    proxy: Ign:8 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://ubuntu.mirror.cambrium.nl/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:5 http://mirror.dataone.nl/ubuntu-archive bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10
    proxy: Ign:5 http://mirror.1000mbps.com/ubuntu bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.vpgrp.io/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.eu.kamatera.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.transip.net/ubuntu/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.dataone.nl/ubuntu-archive bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.hostnet.nl/ubuntu/archive bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 https://mirror.nl.leaseweb.net/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://nl.archive.ubuntu.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.serverius.net/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Get:5 https://mirror.nl.bontekoe.technology/ubuntu bionic-updates/main amd64 squid-common all 3.5.27-1ubuntu1.10 [176 kB]
    proxy: Ign:8 http://nl3.archive.ubuntu.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://ftp.tudelft.nl/archive.ubuntu.com bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://ubuntu.mirror.true.nl/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.nl.datapacket.com/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.nforce.com/pub/linux/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://ftp.snt.utwente.nl/pub/os/linux/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Ign:8 http://mirror.amsiohosting.net/archive.ubuntu.com bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10
    proxy: Get:8 https://mirror.nl.bontekoe.technology/ubuntu bionic-updates/main amd64 squid amd64 3.5.27-1ubuntu1.10 [2,221 kB]
    proxy: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    proxy: Fetched 3,331 kB in 8s (409 kB/s)
    proxy: Selecting previously unselected package libecap3:amd64.
(Reading database ... 100087 files and directories currently installed.)
    proxy: Preparing to unpack .../0-libecap3_1.0.1-3.2_amd64.deb ...
    proxy: Unpacking libecap3:amd64 (1.0.1-3.2) ...
    proxy: Selecting previously unselected package libltdl7:amd64.
    proxy: Preparing to unpack .../1-libltdl7_2.4.6-2_amd64.deb ...
    proxy: Unpacking libltdl7:amd64 (2.4.6-2) ...
    proxy: Selecting previously unselected package squid-langpack.
    proxy: Preparing to unpack .../2-squid-langpack_20170901-1_all.deb ...
    proxy: Unpacking squid-langpack (20170901-1) ...
    proxy: Selecting previously unselected package squid-common.
    proxy: Preparing to unpack .../3-squid-common_3.5.27-1ubuntu1.10_all.deb ...
    proxy: Unpacking squid-common (3.5.27-1ubuntu1.10) ...
    proxy: Selecting previously unselected package libdbi-perl.
    proxy: Preparing to unpack .../4-libdbi-perl_1.640-1ubuntu0.2_amd64.deb ...
    proxy: Unpacking libdbi-perl (1.640-1ubuntu0.2) ...
    proxy: Selecting previously unselected package ssl-cert.
    proxy: Preparing to unpack .../5-ssl-cert_1.0.39_all.deb ...
    proxy: Unpacking ssl-cert (1.0.39) ...
    proxy: Selecting previously unselected package squid.
    proxy: Preparing to unpack .../6-squid_3.5.27-1ubuntu1.10_amd64.deb ...
    proxy: Unpacking squid (3.5.27-1ubuntu1.10) ...
    proxy: Setting up ssl-cert (1.0.39) ...
    proxy: Setting up libecap3:amd64 (1.0.1-3.2) ...
    proxy: Setting up libltdl7:amd64 (2.4.6-2) ...
    proxy: Setting up squid-langpack (20170901-1) ...
    proxy: Setting up squid-common (3.5.27-1ubuntu1.10) ...
    proxy: Setting up libdbi-perl (1.640-1ubuntu0.2) ...
    proxy: Setting up squid (3.5.27-1ubuntu1.10) ...
    proxy: Setcap is not installed, falling back to setuid
    proxy: Skipping profile in /etc/apparmor.d/disable: usr.sbin.squid
    proxy: Processing triggers for systemd (237-3ubuntu10.47) ...
    proxy: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    proxy: Processing triggers for ufw (0.36-0ubuntu0.18.04.1) ...
    proxy: Processing triggers for ureadahead (0.100.0-21) ...
    proxy: Processing triggers for libc-bin (2.27-3ubuntu1.4) ...
    proxy: Proxy test: PASSED.  Http code: 200
==> tfe: Importing base box 'aakulov/bionic64'...
==> tfe: Matching MAC address for NAT networking...
==> tfe: Checking if box 'aakulov/bionic64' version '21.05.27' is up to date...
==> tfe: Setting the name of the VM: tfe-vagrant-proxy_tfe_1626354093739_69617
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
    tfe: Removing insecure key from the guest if it's present...
    tfe: Key inserted! Disconnecting and reconnecting using new SSH key...
==> tfe: Machine booted and ready!
==> tfe: Checking for guest additions in VM...
==> tfe: Setting hostname...
==> tfe: Configuring and enabling network interfaces...
==> tfe: Mounting shared folders...
    tfe: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/tfe-vagrant-proxy
==> tfe: Running provisioner: shell...
    tfe: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210715-16563-vt0nla.sh
    tfe: # Self signed certificate generation
    tfe: Generating RSA private key, 4096 bit long modulus (2 primes)
    tfe: ................................++++
    tfe: ..........................................................................................................................++++
    tfe: e is 65537 (0x010001)
    tfe: Ignoring -days; not generating a certificate
    tfe: Generating a RSA private key
    tfe: ...+++++
    tfe: .......+++++
    tfe: writing new private key to '192.168.56.33.nip.io.key'
    tfe: -----
    tfe: Signature ok
    tfe: subject=C = NL, L = AMS, O = HC, CN = 192.168.56.33.nip.io
    tfe: Getting CA Private Key
==> tfe: Running provisioner: shell...
    tfe: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210715-16563-8p1y74.sh
    tfe: # Fixing a repository certificate issue
    tfe: Reading package lists...
    tfe: Building dependency tree...
    tfe: Reading state information...
    tfe: gpg-agent is already the newest version (2.2.4-1ubuntu1.4).
    tfe: Suggested packages:
    tfe:   dbus-user-session pinentry-gnome3 tor
    tfe: Recommended packages:
    tfe:   gnupg
    tfe: The following NEW packages will be installed:
    tfe:   dirmngr libksba8
    tfe: 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
    tfe: Need to get 409 kB of archives.
    tfe: After this operation, 1,138 kB of additional disk space will be used.
    tfe: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [901 B]
    tfe: Get:2 http://mirror.eu.kamatera.com/ubuntu bionic/main amd64 libksba8 amd64 1.3.5-2 [92.6 kB]
    tfe: Get:3 https://mirror.nl.leaseweb.net/ubuntu bionic-updates/main amd64 dirmngr amd64 2.2.4-1ubuntu1.4 [316 kB]
    tfe: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    tfe: Fetched 410 kB in 0s (1,524 kB/s)
    tfe: Selecting previously unselected package libksba8:amd64.
(Reading database ... 100087 files and directories currently installed.)
    tfe: Preparing to unpack .../libksba8_1.3.5-2_amd64.deb ...
    tfe: Unpacking libksba8:amd64 (1.3.5-2) ...
    tfe: Selecting previously unselected package dirmngr.
    tfe: Preparing to unpack .../dirmngr_2.2.4-1ubuntu1.4_amd64.deb ...
    tfe: Unpacking dirmngr (2.2.4-1ubuntu1.4) ...
    tfe: Setting up libksba8:amd64 (1.3.5-2) ...
    tfe: Setting up dirmngr (2.2.4-1ubuntu1.4) ...
    tfe: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    tfe: Processing triggers for libc-bin (2.27-3ubuntu1.4) ...
    tfe: Warning: apt-key output should not be parsed (stdout is not a terminal)
    tfe: Executing: /tmp/apt-key-gpghome.HEa0j3dwcG/gpg.1.sh --keyserver keyserver.ubuntu.com --recv-keys DA418C88A3219F7B
    tfe: gpg: key DA418C88A3219F7B: public key "HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>" imported
    tfe: gpg: Total number processed: 1
    tfe: gpg:               imported: 1
    tfe: # Downloading installation script
######################################################################## 100.0%        
    tfe: # Running installation script
    tfe: Determining local address
    tfe: The installer will use local address '192.168.56.33' (from parameter)
    tfe: The installer will use the proxy at 'http://192.168.56.32:3128/' (imported from env var 'http_proxy')
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
    tfe:   Version:          1.4.6
    tfe:   GitCommit:        d71fcd7d8303cbf684402823e425e9dd2e99285d
    tfe:  runc:
    tfe:   Version:          1.0.0-rc95
    tfe:   GitCommit:        b9ee9c6314599f1b4a7f497e1f1f856fe433d3b7
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
    tfe: [INFO] / disk usage is at 5%
    tfe: [INFO] /var/lib/docker disk usage is at 5%
    tfe: [INFO] Docker is set with http proxy "http://192.168.56.32:3128/" and no proxy "127.0.0.1,172.17.0.1,192.168.56.33,localhost"
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
    tfe: d94558f8f63a: Waiting
    tfe: 657e54daabf4: Waiting
    tfe: dfa55743770a: Waiting
    tfe: 82a73fe0e9b9: Waiting
    tfe: 9c9b8421b4c8: Waiting
    tfe: 8c9af647b5fd: Waiting
    tfe: f29b1c17ff51: Waiting
    tfe: fce3e81d9123: Waiting
    tfe: 4cec2ee532ca: Verifying Checksum
    tfe: 4cec2ee532ca: Download complete
    tfe: 5e5336345ecc: Verifying Checksum
    tfe: 5e5336345ecc: Download complete
    tfe: 69692152171a: Verifying Checksum
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
    tfe: d94558f8f63a: Verifying Checksum
    tfe: d94558f8f63a: Download complete
    tfe: 82a73fe0e9b9: Verifying Checksum
    tfe: 82a73fe0e9b9: Download complete
    tfe: 9c9b8421b4c8: Verifying Checksum
    tfe: 9c9b8421b4c8: Download complete
    tfe: dfa55743770a: Verifying Checksum
    tfe: 8c9af647b5fd: Verifying Checksum
    tfe: 8c9af647b5fd: Download complete
    tfe: 8c9af647b5fd: Pull complete
    tfe: f29b1c17ff51: Pull complete
    tfe: fce3e81d9123: Pull complete
    tfe: d94558f8f63a: Pull complete
    tfe: 657e54daabf4: Pull complete
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
    tfe: 8db0096a6f1e: Verifying Checksum
    tfe: 8db0096a6f1e: Download complete
    tfe: 0a0630b58335: Verifying Checksum
    tfe: 0a0630b58335: Download complete
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
    tfe: curl -sSL -x http://192.168.56.32:3128/ https://get.replicated.com/operator?replicated_operator_tag=2.52.0
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
    tfe: f9266063add8: Verifying Checksum
    tfe: f9266063add8: Download complete
    tfe: 3669a4e3d61c: Verifying Checksum
    tfe: 3669a4e3d61c: Download complete
    tfe: 69bf04578910: Verifying Checksum
    tfe: 69bf04578910: Download complete
    tfe: bc03da138eb1: Verifying Checksum
    tfe: bc03da138eb1: Download complete
    tfe: 99408039ae2c: Verifying Checksum
    tfe: 99408039ae2c: Download complete
    tfe: 99408039ae2c: Pull complete
    tfe: f9266063add8: Pull complete
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
==> tfe: URL: https://192.168.56.33.nip.io:8080/
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
