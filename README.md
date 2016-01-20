# Ansible playbooks for local dev machine. 

Quick and dirty playbooks for dev config.

## Install dependencies
```sh
./bootstrap.sh
```

## Run playbooks
```sh
$ ansible-playbook -b -i inventory packages.yml
$ ansible-playbook -b -i inventory google-chrome.yml
$ ansible-playbook -b -i inventory docker.yml
$ ansible-playbook -b -i inventory firewall.yml
```

Check top level project directory for other playbooks.
