#!/bin/bash

cd /home/ubuntu/django-docker-server/

EXIST_NGINX=$(docker-compose -p nginx -f docker-compose.nginx.yml ps | grep Up)

if [ -z "$EXIST_NGINX" ]
then
  echo " nginx already running "
else
  echo " nginx up "
	docker-compose -p nginx-blue -f docker-compose.nginx.yml up --build -d
fi

cd /home/ubuntu/django-docker-server/scripts
./deploy.sh > /dev/null 2> /dev/null < /dev/null &
