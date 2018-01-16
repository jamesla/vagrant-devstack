# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ceph/ubuntu-xenial"

  memory = 10000
  cpus = 4

  # config.vm.synced_folder ".", "/vagrant"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider "libvirt" do |libvirt|
    libvirt.memory = memory
    libvirt.cpus = cpus
  end

  config.vm.provision "ansible_local", run: "once" do |ansible|
    ansible.provisioning_path = "/vagrant/ansible/"
    ansible.verbose = 'vvv'
    ansible.install = true
    ansible.install_mode = "pip"
    ansible.playbook = "playbook.yml"
    ansible.sudo = true
  end
end
