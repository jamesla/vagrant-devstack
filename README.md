# Vagrant-devstack

## Quickstart

### Run
```
sudo apt install -y kvm
vagrant plugin install vagrant-livirt
vagrant up
```
Then browse to http://localhost:8080 using admin/password

### Reprovisioning

Devstack doesn't like running stack.sh twice so if you want to make configuration file changes then:

```
vagrant destroy; vagrant up
```
