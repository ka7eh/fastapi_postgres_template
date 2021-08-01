#! /usr/bin/env bash
set -e

CONTAINER=$(docker ps -q -a -f name=rabbitmq)
if [ $CONTAINER ]; then
    docker container rm -f $CONTAINER
fi

docker run --rm -d -p 5672:5672 -p 15672:15672 --name rabbitmq rabbitmq:management

celery -A app.worker worker -l info -Q main-queue -c 1
