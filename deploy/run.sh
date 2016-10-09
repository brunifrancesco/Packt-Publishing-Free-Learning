#! /bin/bash

ansible-playbook run.yml -c local
cd pfl
devcron.py crontab &
nginx -g 'daemon off;'