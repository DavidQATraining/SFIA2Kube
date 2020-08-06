#!/bin/bash

# Build and push images 1,2,3,4 and nginx
docker build -t davidqatraining/service_1 ./Service_1
docker push davidqatraining/service_1

docker build -t davidqatraining/service_2 ./Service_2
docker push davidqatraining/service_2


docker build -t davidqatraining/service_3 ./Service_3
docker push davidqatraining/service_3


docker build -t davidqatraining/service_4 ./Service_4
docker push davidqatraining/service_4

docker build -t davidqatraining/nginxcont ./NGINX
docker push davidqatraining/nginxcont
