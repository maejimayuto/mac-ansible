#!/bin/bash
# Purpose:
#       * download mac-ansible and start updating the system

set -e
WORK_PATH = '~/work/project/tools'
REPO = 'mac-ansible'

mkdir -p $WORK_PATH

if [[ -d "${WORK_PATH}/${REPO}" ]]; then
    if [[ -d "${WORK_PATH}/${REPO}/.git" ]]; then
      echo "Install | mac-ansible | Pull"
      cd "${WORK_PATH}/${REPO}" && git pull
    fi
else
  echo "Install | mac-ansible | Clone"
  cd $WORK_PATH && git clone https://github.com/maejimayuto/mac-ansible.git
fi

cd "${WORK_PATH}/${REPO}" && ./bootstrap.sh
