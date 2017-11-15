# Vagrant-devstack

## Quickstart

### Run
```
sudo apt install -y kvm
vagrant plugin install vagrant-livirt
vagrant up
```

Box is configured to reprovision on reload so if you need to change config just run vagrant reload after changing the template.
