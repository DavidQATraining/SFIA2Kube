#!/bin/bash

source /var/lib/jenkins/.dbenvs

docker stack deploy --compose-file docker-compose.yml projectstack
 
