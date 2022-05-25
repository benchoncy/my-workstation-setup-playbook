# My Ansible Setup Playbook

The goal of this playbook is to enable a quick, repeatable and testable method of configuring my Linux desktop computer.

This playbook aims to:
- Support Fedora machines
- Install and configure package managers
- Install desired packages
- Include my dotfiles
- Automate as many other first setup steps as possible

## Running the playbook

Run playbook locally with:
```none
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become-pass main.yml
```