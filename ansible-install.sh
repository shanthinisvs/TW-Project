#!/bin/bash
 
# Update package lists
sudo apt update
 
# Install necessary dependencies
sudo apt install -y software-properties-common
 
# Add Ansible repository
sudo apt-add-repository --yes --update ppa:ansible/ansible
 
# Install Ansible
sudo apt install -y ansible
 
# Display Ansible version
ansible --version
 
echo "Ansible has been successfully installed."





