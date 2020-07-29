#!/bin/bash

# if service 1 image does not exsist locally build image, then same for 2,3,4
if [[ "$(docker images davidqatraining/service_1:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_1 ./Service_1
    docker push davidqatraining/service_1
else
    docker pull davidqatraining/service_1
fi

if [[ "$(docker images davidqatraining/service_2:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_2 ./Service_2
    docker push davidqatraining/service_2
else
    docker pull davidqatraining/service_2
fi

if [[ "$(docker images davidqatraining/service_3:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_3 ./Service_3
    docker push davidqatraining/service_3
else
    docker pull davidqatraining/service_3
fi

if [[ "$(docker images davidqatraining/service_4:latest 2> /dev/null)" == "" ]]; then
    docker build -t davidqatraining/service_4 ./Service_4
    docker push davidqatraining/service_4
else
    docker pull davidqatraining/service_4
fi

docker rmi $(docker images -f "dangling=true" -q)