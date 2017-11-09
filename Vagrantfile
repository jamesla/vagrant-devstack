# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "jamesla/ubuntu-1604-min-daily"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "8000"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/vagrant/ansible/"
    # ansible.verbose = true
    ansible.verbose = 'vvv'
    ansible.install = true
    ansible.install_mode = "pip"
    ansible.playbook = "playbook.yml"
    ansible.sudo = true
  end

end
