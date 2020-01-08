Vagrant.configure("2") do |config|
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true
    config.vm.hostname = 'master.klg.local'
    config.vm.network :private_network, ip: '192.168.42.2'
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
        v.cpus = 2
    end
    config.vm.box = "geerlingguy/centos7"
    config.vm.provision "shell", path: "scripts/disable-swap.sh"
    config.vm.provision "shell", path: "scripts/force-legacy-iptables.sh"
    config.vm.provision "shell", path: "scripts/set-net-bridge-iptables.sh"
    config.vm.provision "shell", path: "scripts/install-docker-ce.sh"
    config.vm.provision "shell", path: "scripts/install-kubeadm.sh"
end
