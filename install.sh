#!/bin/sh

set -e

virtualenv virt
. virt/bin/activate

pip install --upgrade -r requirements.txt

ansible-galaxy install -p ./roles angstwad.docker_ubuntu || true
ansible-galaxy install -p ./roles joshualund.golang || true

echo "\n\nTo use ansible and annsible-galaxy ensure ${HOME}/.local/bin/ is in \${PATH}"
