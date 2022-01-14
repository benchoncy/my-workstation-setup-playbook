# my-linux-setup-playbook

The goal of this playbook is to enable a quick, repeatable and testable method of configuring my Linux desktop computer.

This playbook aims to:
- Support both Ubuntu and Fedora machines
- Install:
	- software I use day-to-day
	- programming languages/interpreters/compilers
	- package managers
- Configure:
	- the terminal
	- command-line tools such as git or vim
	- Gnome desktop env
- Automate as many other first set up steps as possible

## Running the playbook

Run playbook locally with:
```
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become-pass main.yml
```