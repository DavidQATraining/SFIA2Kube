#!/bin/bash

# Build and push images 1,2,3,4 and nginx
docker build -t davidqatraining/service-1 ./Service_1
docker push davidqatraining/service-1

docker build -t davidqatraining/service-2 ./Service_2
docker push davidqatraining/service-2


docker build -t davidqatraining/service-3 ./Service_3
docker push davidqatraining/service-3


docker build -t davidqatraining/service-4 ./Service_4
docker push davidqatraining/service-4

docker build -t davidqatraining/nginxcont ./NGINX
docker push davidqatraining/nginxcont
