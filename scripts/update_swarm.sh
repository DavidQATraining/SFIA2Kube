#!/bin/bash

#docker-compose push
docker push davidqatraining/service_1
docker push davidqatraining/service_2
docker push davidqatraining/service_3
docker push davidqatraining/service_4
docker pull davidqatraining/service_1
docker pull davidqatraining/service_2
docker pull davidqatraining/service_3
docker pull davidqatraining/service_4
#docker stack deploy --compose-file docker-compose.yml projectstack
docker service update --image service_1:latest service_1
docker service update --image service_2:latest service_2
docker service update --image service_3:latest service_3
docker service update --image service_4:latest service_4