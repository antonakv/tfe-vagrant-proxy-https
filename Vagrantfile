Vagrant.configure("2") do |config|
  config.vm.box = "aakulov/bionic64"
  config.vm.hostname = "ptfe"
  config.vm.network "private_network", ip: "192.168.56.33"
  config.vm.define "tfe-vagrant"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024 * 4
    v.cpus = 2
    v.name = "tfe-vagrant"
  end

  config.vm.provision "shell", path: "scripts/self-signed-local-gen.sh", privileged: false
  config.vm.provision "shell", path: "scripts/setup-tfe.sh"
  config.vm.post_up_message = "URL is https://192.168.56.33.nip.io:8800"
end
