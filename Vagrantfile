# -*- mode: ruby -*-
# vi: set ft=ruby :

# Name of your local workspace to map
WORKSPACE="Workspace"

def get_workspace
  "#{Dir.home}\#{WORKSPACE}"
end

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/vivid64"

  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "shell", path: "provisioning/emacs.sh"
  config.vm.provision "shell", path: "provisioning/haskell.sh"
  config.vm.provision "shell", path: "provisioning/java.sh"

  # Beef up the VM
  config.vm.provider :virtualbox do |v|
    v.gui = true
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    v.customize ["modifyvm", :id, "--memory", "2048"]
    # Video RAM in MB ( Need at least 16 MB for full screen )
    v.customize ["modifyvm", :id, "--vram", "64"]
    v.customize ["modifyvm", :id, "--cpus", "4"]
  end

  # Workspace

  if Dir.exists?(get_workspace)
    config.vm.synced_folder get_workspace, "/vagrant/home/#{WORKSPACE}"
  end

  # SSH
  config.ssh.forward_agent = true
  config.ssh.forward_x11   = true
end
