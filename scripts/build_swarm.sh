#!/bin/bash

# if stack does not exsist locally build stack
if [[ "$(docker stack services projectstack 2> /dev/null)" == "" ]]; then
    docker stack deploy --compose-file docker-compose.yml projectstack
 
fi