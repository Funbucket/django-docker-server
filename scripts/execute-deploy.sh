#!/bin/bash

echo " Deploying... "
cd /home/ubuntu/django-docker-server/scripts
./deploy.sh > /dev/null 2> /dev/null < /dev/null &
