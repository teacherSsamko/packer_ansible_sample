# packer_ansible_sample

Sample code for creating AWS AMI using packer &amp; ansible

FE: react app
BE: django app

## Requirements

### install packer

1. [install packer](https://www.packer.io/docs/install/linux-stable/)

### install ansible

1. [install ansible](https://docs.ansible.com/ansible/latest/intro_installation.html)

### Set github access token

1. `export TF_VAR_git_access_token=<your_token>`

## commands

1. `packer build FE/react_ami.pkr.hcl`
1. `packer build BE/django_ami.pkr.hcl`
