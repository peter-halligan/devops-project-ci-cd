#!/bin/bash

which kubectl
aws eks --region us-west-2 update-kubeconfig --name dev

kubectl apply -f namespace.yml

kubectl apply -f deployment.yml

kubectl get deployments

kubectl apply -f service.yml

kubectl get pods -o wide
