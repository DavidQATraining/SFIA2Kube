#!/bin/bash


docker service update --image service_1:latest service_1
docker service update --image service_2:latest service_2
docker service update --image service_3:latest service_3
docker service update --image service_4:latest service_4