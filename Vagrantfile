# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "jamesla/ubuntu-1604-min-daily"
  memory = 16000
  cpus = 4

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = memory
    vb.cpus = cpus
  end

  config.vm.provider "vmware_workstation" do |vmware|
    vmware.gui = false
    vmware.vmx["memsize"] = memory
    vmware.linked_clone = false
    vmware.vmx["numvcpus"] = cpus
    vmware.vmx['vhv.enable'] = 'TRUE'
    vmware.vmx['vhv.allow'] = 'TRUE'
    vmware.vmx["ethernet0.pcislotnumber"] = "33"
    vmware.vmx['ethernet0.virtualDev'] = "e1000"
  end

  config.vm.provision "ansible_local", run: "always" do |ansible|
    ansible.provisioning_path = "/vagrant/ansible/"
    ansible.verbose = 'vvv'
    ansible.install = true
    ansible.install_mode = "pip"
    ansible.playbook = "playbook.yml"
    ansible.sudo = true
  end

end
