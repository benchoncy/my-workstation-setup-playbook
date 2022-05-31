#!/usr/bin/env bash

WORK_DIR=/tmp/setup

read -sp "Enter sudo password for $USER: " sudopass

# Install pre-requisites
dnf install -y python3 python3-pip git
pip3 install ansible ansible-core

git clone https://github.com/benchoncy/my-workstation-setup-playbook.git $WORK_DIR

ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become-pass $WORK_DIR/main.yml
expect "BECOME password: "
send "$sudopass"