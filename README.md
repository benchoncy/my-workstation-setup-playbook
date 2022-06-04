# My Workstation Setup Playbook

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
ansible-playbook -c local -i 127.0.0.1, -K main.yml
```

Full bootstrap and run locally:
```none
/bin/bash -c "$(curl -fsS https://raw.githubusercontent.com/benchoncy/my-workstation-setup-playbook/main/setup.sh)"
```