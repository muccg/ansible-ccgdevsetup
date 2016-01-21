# Ansible playbooks for local dev machine. 

Quick and dirty playbooks for dev config.

## Install dependencies
```sh
./bootstrap.sh
```

## Run dev playbook
```sh
$ ansible-playbook devmachine.yml -i inventory --ask-become-pass
```

