#!/bin/bash

set -o xtrace

# Install basic packages for this script.
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible git

# GIT clone our playbook to CWD.
git clone https://github.com/pantarei/ansible-playbook-jira.git -b master ansible-playbook-jira

# Bootstrap Ansible then run all playbooks.
cd ansible-playbook-jira
scripts/bootstrap-roles.sh
scripts/bootstrap-vars.sh
scripts/bootstrap-hosts.sh
scripts/run-playbooks.sh
