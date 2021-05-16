#!/bin/sh

docker build . -t manoky/ml-frontend:latest
docker login
docker push manoky/ml-frontend:latest
