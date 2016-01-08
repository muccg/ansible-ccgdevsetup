
## prerequisites ##

 - python
 - python-dev
 - pip
 - virtualenv


## install ##
 - ./install.sh
 - source virt/bin/activate

Now you can run playbooks::
  (virt)$ ansible-playbook -K -i inventory packages.yml
  (virt)$ ansible-playbook -K -i inventory google-chrome.yml
  (virt)$ ansible-playbook -K -i inventory docker.yml

