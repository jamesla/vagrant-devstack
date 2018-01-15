# Vagrant-devstack

## Quickstart

### Run
```
sudo apt install -y kvm
vagrant plugin install vagrant-libvirt
vagrant up
vagrant ssh
cd ~/devstack-repo && ./stack
```
Then browse to http://localhost:8080 using admin/password
