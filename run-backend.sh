#!/bin/bash

docker stop todo-app-backend
docker rm todo-app-backend

docker run --name todo-app-backend -d -p 8080:8080 --network home_net jeffleevm/todo-app-backend
