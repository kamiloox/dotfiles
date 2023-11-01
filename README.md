# Dotfiles

Managing configuration files can be pretty overwhelming, especially when there is a need to constantly switch between many different machines. Having them in sync is hard. This repository contains my personal dotfiles and Ansible tasks that install all the dependencies with one command.

## Usage

You need to have installed Ansible on your control node - [Installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html). After that you can run an `install.sh` command. Edit the variables in this script according to needs.

```bash
# Can be set to a remote ip address that will be managed via ssh connection
dotfiles_host="localhost"

# Defines if the desktop GUI packages should be installed
desktop=false
```

## Supported platforms

Currently only Arch-based distributions are supported. In the future there will be an MacOSX as well.
