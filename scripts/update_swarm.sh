#!/bin/bash

docker push
docker stack deploy --compose-file docker-compose.yml projectstack