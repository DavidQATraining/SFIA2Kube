#!/bin/bash


docker service update -d --image davidqatraining/service_1:latest projectstack_service_1
docker service update -d --image davidqatraining/service_2:latest projectstack_service_2
docker service update -d --image davidqatraining/service_3:latest projectstack_service_3
docker service update -d --image davidqatraining/service_4:latest projectstack_service_4

