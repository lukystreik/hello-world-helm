#!/bin/bash

docker build -t lukystreik/hello-world:latest .
#docker run -p 80:8008 hello-world

#docker tag hello-world lukystreik/hello-world:latest
docker push lukystreik/hello-world:latest
