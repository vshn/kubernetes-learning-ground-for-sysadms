Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    end
  config.vm.box = "geerlingguy/centos7"
  config.vm.provision "shell", path: "scripts/force-legacy-iptables.sh"
  config.vm.provision "shell", path: "scripts/install-docker-ce.sh"
end