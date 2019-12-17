#!/bin/bash

mvn clean package
docker rm demo-todo-app-backend
docker stop demo-todo-app-backend
docker rmi jeffleehk/demo-todo-app-backend
#docker rmi 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-backend
#$(aws ecr get-login --no-include-email --region ap-southeast-1)
#docker build -t 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-backend:latest .
docker build -t jeffleehk/demo-todo-app-backend:latest .
#docker push 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-backend:latest
docker push jeffleehk/demo-todo-app-backend:latest
