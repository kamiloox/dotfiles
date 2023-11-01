#!/bin/bash

dotfiles_host="localhost"
desktop=false

function validate_community_collection {
  if [[ -z $(ansible-galaxy collection list | grep community.general) ]]; then
    ansible-galaxy collection install community.general
  else
    echo "skipping: Ansible community.general collection is already installed"
  fi
}

function run_playbook {
  validate_community_collection

  ansible-playbook -v --ask-become-pass bootstrap.yaml --extra-vars "{"hostname": "$dotfiles_host", desktop: $desktop}"
}

if which ansible > /dev/null; then
  run_playbook
else
  echo "Command 'ansible' cannot be found. Please install it by running 'pip install ansible'." >&2
fi
