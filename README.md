
Ansible playbooks for local dev machine. It's quick and dirty.

## prerequisites ##

 - python
 - python-dev
 - pip
 - virtualenv


## install ##
 - ./install.sh
 - source virt/bin/activate

Run playbooks:

```sh
(virt)$ ansible-playbook -K -i inventory packages.yml
(virt)$ ansible-playbook -K -i inventory google-chrome.yml
(virt)$ ansible-playbook -K -i inventory docker.yml
```

