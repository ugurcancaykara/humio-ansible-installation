#!/bin/bash -e

export ANSIBLE_CONFIG=$PWD/ansible.cfg

ansible-playbook \
    --connection=ssh \
    --timeout=30 \
    --extra-vars "@extra_vars.yaml" \
    main.yaml $@