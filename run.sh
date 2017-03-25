#!/bin/bash
ansible-playbook playbook.yml -i hosts --ask-pass --vault-password-file .vault_pass.txt
