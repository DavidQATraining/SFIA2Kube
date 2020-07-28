#!/bin/bash

docker push davidqatraining/service_1
docker push davidqatraining/service_2
docker push davidqatraining/service_3
docker push davidqatraining/service_4
docker pull davidqatraining/service_1
docker pull davidqatraining/service_2
docker pull davidqatraining/service_3
docker pull davidqatraining/service_4
docker stack deploy --compose-file docker-compose.yml projectstack