#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="thanhbao0390/p4baont1app"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run p4baont1app\
#     --generator="run-pod/v1"\
#     --image=$dockerpath\
#     --port=80 --labels app=p4baont1app
kubectl run p4baont1app --image=$dockerpath:latest --port=80 --labels="app=p4baont1app,env=prod"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward p4baont1app 8000:80

