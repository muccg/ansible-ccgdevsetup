#!/bin/sh

set -e

pip install --user --upgrade -r requirements.txt

export PATH=$PATH:${HOME}/.local/bin/
ansible-galaxy install -p ./roles angstwad.docker_ubuntu || true
ansible-galaxy install -p ./roles joshualund.golang || true

echo "\n\nTo use ansible and annsible-galaxy ensure ${HOME}/.local/bin/ is in \${PATH}"
