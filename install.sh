#!/bin/sh

cd terraform
terraform init
terraform apply -auto-approve

terraform output | tr "=" ":" > ../ansible/inventory/group_vars/all.yml

cd ../ansible



ansible-playbook playbooks/all.yml