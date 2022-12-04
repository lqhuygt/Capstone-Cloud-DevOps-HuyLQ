# Cloud DevOps Engineer Capstone Project

## Project Overview

This project represents the successful completion of the last final Capstone project and the Cloud DevOps Engineer Nanodegree at Udacity.

### Introduction

In this project, I applied the skills and knowledge I developed throughout the Cloud DevOps Nanodegree program to deploy Flask application. These include:

- Using Circle CI to implement Continuous Integration and Continuous Deployment to building lint test, Docker, Kubernetes
- Working with AWS EKS to deploy clusters
- Using a rolling update strategy

### What did I do?

Using a CI/CD approach, we build a Docker image and then run it in aKubernetes cluster.

The project includes the following main tasks:
- Linting using Pylint and Hadolint to check if the Application and Dockerfile is syntactically correct.

- Docker Image and DockerHub to containerized application
- Create K8S cluster on AWS using EKSCTL
- Deploy application on K8S
- Using a rolling-update strategy to update application
- Delete the cluster

#### Note CicleCI Variables

You need to set up the following environment variables in your CircleCI project with values:

* AWS_ACCESS_KEY_ID
* AWS_DEFAULT_REGION
* AWS_SECRET_ACCESS_KEY
* DOCKERHUB_PASSWORD
* DOCKERHUB_USERNAME
* KEY_PAIR_EC2
  
### Main Files

* [Makefile](./Makefile): the file to run lint test
* [config.yml](.circleci/config.yml): to test and integrate the app under CircleCI
* [app.py](./app.py): the sample python/flask app
* [Dockerfile](./Dockerfile): the Docker image's specification file
* [eks_cluster.yml](./eks_cluster.yml): EKS cluster definition file
* [deploy_k8s.sh](./deploy_k8s.sh): scripts file to run command on k8s
* [requirements.txt](./requirements.txt): file to install library for app


