#!/bin/bash

# if service 1 image does not exsist locally build image, then same for 2,3,4
docker build -t davidqatraining/service_1 ./Service_1
docker push davidqatraining/service_1

docker build -t davidqatraining/service_2 ./Service_2
docker push davidqatraining/service_2


docker build -t davidqatraining/service_3 ./Service_3
docker push davidqatraining/service_3


docker build -t davidqatraining/service_4 ./Service_4
docker push davidqatraining/service_4


