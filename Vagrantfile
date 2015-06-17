# -*- mode: ruby -*-
# vi: set ft=ruby :

# Name of your local workspace to map
WORKSPACE="Workspace"

def get_workspace
  "#{Dir.home}\#{WORKSPACE}"
end

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/precise64"
  config.vm.provision "shell", path: "provision.sh"
  
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "4"]
  end

  # Workspace

  if Dir.exists?(get_workspace)
    config.vm.synced_folder get_workspace, "/vagrant/home/#{WORKSPACE}"
  end

  # SSH
  config.ssh.forward_agent = true
  config.ssh.forward_x11   = true
end
