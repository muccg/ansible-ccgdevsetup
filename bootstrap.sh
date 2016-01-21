#!/bin/sh

# python 2.7 deps
echo "Installing python 2.7 dependencies, you need to be root for this"
sudo apt-get install python-dev python-pip libyaml-dev

echo "Installing ansible tools"
pip install --user --upgrade -r requirements.txt

echo "Installing 3rd party roles"
export PATH=$PATH:${HOME}/.local/bin/
ansible-galaxy install -p ./roles angstwad.docker_ubuntu || true
ansible-galaxy install -p ./roles joshualund.golang || true

echo "\n\nTo use ansible and annsible-galaxy ensure ${HOME}/.local/bin/ is in \${PATH}"
echo "I've added it to this session for your convenience"
