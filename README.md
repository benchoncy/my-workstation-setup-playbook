# My Ansible Setup Playbook

The goal of this playbook is to enable a quick, repeatable and testable method of configuring my Linux desktop computer.

This playbook aims to:
- Support both Ubuntu and Fedora machines
- Install:
	- software I use day-to-day
	- programming languages/interpreters/compilers
	- dev tools
	- package managers
- Configure:
	- terminal
	- command-line tools
- Automate as many other first set up steps as possible

## Running the playbook

Run playbook locally with:
```none
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become-pass main.yml
```