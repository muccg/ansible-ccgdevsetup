
Ansible playbooks for local dev machine. 

I run this in a non standard location (~/ansible) so I am not polluting /etc/ansible which is dedicated to work. It's quick and dirty.

My ansible foo is weak. So please, make suggestions/changes.

## prerequisites ##
 - python
 - python-dev
 - pip
 - virtualenv

## install ##
 - ./install.sh
 - source virt/bin/activate

## Run playbooks ##
```sh
(virt)$ ansible-playbook -K -i inventory packages.yml
(virt)$ ansible-playbook -K -i inventory google-chrome.yml
(virt)$ ansible-playbook -K -i inventory docker.yml
```
