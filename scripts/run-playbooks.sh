#!/bin/bash

set -o xtrace

ansible-playbook -i inventory/jira playbooks/setup-everything.yml
