#!/bin/sh

export PATH=${PATH}:${HOME}/.local/bin/

ansible-playbook --become --inventory-file inventory packages.yml
ansible-playbook --become --inventory-file inventory google-chrome.yml
ansible-playbook --become --inventory-file inventory docker.yml
ansible-playbook --become --inventory-file inventory firewall.yml
