# packer_ansible_sample

Sample code for creating AWS AMI using packer &amp; ansible

## Requirements

### install packer

1. [install packer](https://www.packer.io/docs/install/linux-stable/)

### install ansible

1. [install ansible](https://docs.ansible.com/ansible/latest/intro_installation.html)

### Set github access token

1. `export TF_VAR_git_access_token=<your_token>`

## commands

1. `cd packer`
2. `packer build react_ami.pkr.hcl`
