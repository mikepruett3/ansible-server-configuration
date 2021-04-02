# ansible-server-configuration

Ansible Playbooks for deployment, configuration, and maintaining servers

# Installation and Usage
The following section explains how to install and use this playbook.

## Clone Repo and Install Ansible

1. Clone or download this repo to the machine which will be your Ansible control node. This can be a local workstation or a server which has ssh access to the target host(s).

2. Install Ansible following the official [Installing Ansible documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

## Configuration

Copy the `example.hosts.yml` file to `hosts.yml` and edit the hostnames/IPs listed.

If you are not using SSH agent, you may need to configure Ansible to you the correct SSH key by setting `private_key_file` in the `ansible.cfg` file. Read more in the [SSH key setup Ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/connection_details.html#ssh-key-setup).

## Pull down requirements from Ansible Galaxy
From the root of this project, run: `ansible-galaxy install -r requirements.yaml`

