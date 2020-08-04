#!/bin/bash

kubectl apply -f namespace.yml

kubectl apply -f deployment.yml

kubectl get deployments

kubectl apply -f service.yml

kubectl get pods -o wide
