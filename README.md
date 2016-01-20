# Ansible playbooks for local dev machine. 

Quick and dirty playbooks for dev config.

## Install dependencies
```sh
./bootstrap.sh
```

## Run most common playbooks
`$ sudo ./play_common.sh`

## Run individual playbooks
```sh
$ ansible-playbook --become --inventory inventory packages.yml
$ ansible-playbook --become --inventory inventory google-chrome.yml
$ ansible-playbook --become --inventory inventory docker.yml
$ ansible-playbook --become --inventory inventory firewall.yml
```

Check top level project directory for other playbooks.

