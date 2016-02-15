# Ansible playbooks for local dev machine. 

Quick and dirty playbooks for dev config.

## Install dependencies (only if you want ubuntu python packages!)
```sh
./bootstrap.sh
```

## Install ansible (installs using python --user)
```sh
./install.sh
```

## Run most common playbooks
`$ sudo ./play_common.sh`

## Run individual playbooks
```sh

$ ansible-playbook --ask-become-pass -i inventory packages.yml
$ ansible-playbook --ask-become-pass -i inventory google-chrome.yml
$ ansible-playbook --ask-become-pass -i inventory docker.yml
$ ansible-playbook --ask-become-pass -i inventory firewall.yml
```

Check top level project directory for other playbooks.

