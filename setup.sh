#!/usr/bin/env bash

WORK_DIR=/tmp/setup

read -s -p "Enter sudo password for $USER: " $password
echo ""

echo "Installing pre-requisites..."
echo $password | sudo -S -k dnf install -yq python3 python3-pip git 2>/dev/null
pip -q install ansible ansible-core

echo "Cloning repository..."
rm -rf $WORK_DIR && \
git clone -q https://github.com/benchoncy/my-workstation-setup-playbook.git $WORK_DIR

echo "Running Ansible playbook..."
ansible-playbook -c local -i 127.0.0.1, -e "ansible_become_pass=$password" $WORK_DIR/main.yml