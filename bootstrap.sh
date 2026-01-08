#!/bin/bash
#Create namespaces for the todoapp and mysql services
kubectl apply -f .infrastructure/services/mysql/mysql-namespace.yml
kubectl apply -f .infrastructure/services/todoapp/todoapp-namespace.yml
#Create service for the todoapp and mysql
kubectl apply -f .infrastructure/services/todoapp/todoapp-service.yml
kubectl apply -f .infrastructure/services/mysql/mysql-st-service.yml
#Create nodePort service for the todoapp
kubectl apply -f .infrastructure/services/todoapp/todo-app-nodeport.yml
#Create secrets for the todoapp and mysql
kubectl apply -f ./infrastructure/services/todoapp/todoapp-secret.yml
kubectl apply -f ./infrastructure/services/mysql/mysql-secret.yml
#Apply configMap for the todoapp and mysql service
kubectl apply -f ./infrastracture/services/todoapp/todoapp-configMap.yml
kubectl apply -f ./infrastracture/services/mysql/mysql-configMap.yml
