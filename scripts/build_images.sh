#!/bin/bash

# if service 1 image does not exsist locally build image, then same for 2,3,4
if [[ "$(docker images - q davidqatraining/service_1:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_1 ./Service_1 #S
fi

if [[ "$(docker images - q davidqatraining/service_1:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_2 ./Service_2 #S
fi

if [[ "$(docker images - q davidqatraining/service_1:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_3 ./Service_3 #S
fi

if [[ "$(docker images - q davidqatraining/service_1:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_3 ./Service_4 #S
fi