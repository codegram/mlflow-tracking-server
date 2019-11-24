#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
cd mlflow_tracking_server && docker build --no-cache -t mlflow-tracking-server:1.4.0-1 .
docker tag mlflow-tracking-server:1.4.0-1 codegram/mlflow-tracking-server:1.4.0-1
docker push codegram/mlflow-tracking-server:1.4.0-1
