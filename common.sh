#!/bin/bash

export PATH=${PATH}:${HOME}/.local/bin/

plays=( go.yml packages.yml google-chrome.yml docker.yml docker-squid.yml docker-devpi.yml firewall.yml )

for play in "${plays[@]}"
do
    echo "Playing $play"
    ansible-playbook --become --inventory-file inventory $play
done
