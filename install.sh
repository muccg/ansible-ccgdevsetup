#!/bin/sh

TOPDIR=$(cd `dirname $0`; pwd)

set -e

VIRTUALENV="${TOPDIR}/virt"

make_virtualenv() {
  which virtualenv > /dev/null
  if [ ! -e ${VIRTUALENV} ]; then
    virtualenv ${VIRTUALENV}
  fi

  . ${VIRTUALENV}/bin/activate
  pip install -r requirements.txt
}

make_virtualenv

ansible-galaxy install -p ./roles angstwad.docker_ubuntu || true
ansible-galaxy install -p ./roles flyinggecko.i3 || true
