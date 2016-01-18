#!/bin/bash

export PATH=${PATH}:${HOME}/.local/bin/

plays=( packages.yml google-chrome.yml docker.yml firewall.yml )

for play in "${plays[@]}"
do
    ansible-playbook --become --ask-become-pass --inventory-file inventory $play
done
