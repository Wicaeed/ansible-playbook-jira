JIRA Ansible Playbook
=====================

[![Build
Status](https://travis-ci.org/pantarei/ansible-playbook-jira.svg?branch=master)](https://travis-ci.org/pantarei/ansible-playbook-jira)
[![GitHub
tag](https://img.shields.io/github/tag/pantarei/ansible-playbook-jira.svg)](https://github.com/pantarei/ansible-playbook-jira)
[![GitHub
license](https://img.shields.io/github/license/pantarei/ansible-playbook-jira.svg)](https://github.com/pantarei/ansible-playbook-jira)

Ansible Playbook for Atlassian JIRA Installation.

Requirements
============

This playbook require Ansible 1.9 or higher.

This playbook was designed for Ubuntu Server 14.04 LTS.

Deployment
==========

This stack can be on a single node or multiple nodes. The inventory file
'hosts' defines the nodes in which the stack should be configured.

    [jira]
    jira.localdomain

    [postgresql]
    postresql.localdomain

    [apache2_all]
    apache2.localdomain

Install roles depedency with following command:

    ansible-galaxy install -r roles.yml

The stack can be deployed using the following command:

    ansible-playbook -i hosts playbooks/setup-jira.yml

License
-------

-   Code released under
    [MIT](https://github.com/hswong3i/ansible-playbook-jira/blob/master/LICENSE)
-   Docs released under [CC BY
    4.0](http://creativecommons.org/licenses/by/4.0/)

Author Information
------------------

-   Wong Hoi Sing Edison
    -   <https://twitter.com/hswong3i>
    -   <https://github.com/hswong3i>

