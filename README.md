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

Box is configured to reprovision on reload so if you need to change config just run vagrant reload after changing the template.
