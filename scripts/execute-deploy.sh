#!/bin/bash

echo " Deploying... "
cd /home/ubuntu/django-docker-server/scripts
./run-nginx.sh &
