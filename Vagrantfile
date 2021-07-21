$msg = <<MSG
------------------------------------------------------
TFE is installed

URL: https://192.168.56.33.nip.io:8800/

Password: Password1#

------------------------------------------------------
MSG

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024 * 4
    v.cpus = 2
  end

  config.vm.define "proxy" do |proxy|
    proxy.vm.box = "aakulov/bionic64"
    proxy.vm.hostname = "proxy"
    proxy.vm.network "private_network", ip: "192.168.56.32"
    proxy.vm.define "proxy"
    proxy.vm.provision "shell", path: "scripts/self-signed-local-gen-proxy.sh", privileged: false
    proxy.vm.provision "shell", path: "scripts/setup-proxy.sh"
  end

  config.vm.define "tfe" do |tfe|
    tfe.vm.box = "aakulov/bionic64"
    tfe.vm.hostname = "tfe"
    tfe.vm.network "private_network", ip: "192.168.56.33"
    tfe.vm.define "tfe"
    tfe.vm.provision "shell", path: "scripts/self-signed-local-gen.sh", privileged: false
    tfe.vm.provision "shell", path: "scripts/setup-tfe.sh"
    tfe.vm.post_up_message = $msg
  end
end
