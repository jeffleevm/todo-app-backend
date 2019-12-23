# Todo Application Backend

```
#!/bin/bash

mvn clean package
docker rm todo-app-backend
docker stop todo-app-backend
docker rmi jeffleevm/todo-app-backend
docker build -t jeffleevm/todo-app-backend:latest .
docker login --username jeffleevm
docker push jeffleevm/todo-app-backend:latest
```