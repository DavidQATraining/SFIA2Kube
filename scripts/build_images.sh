#!/bin/bash

# Build and push images 1,2,3,4
docker build -d -t davidqatraining/service_1 ./Service_1
docker push davidqatraining/service_1

docker build -d -t davidqatraining/service_2 ./Service_2
docker push davidqatraining/service_2


docker build -d -t davidqatraining/service_3 ./Service_3
docker push davidqatraining/service_3


docker build -d -t davidqatraining/service_4 ./Service_4
docker push davidqatraining/service_4


