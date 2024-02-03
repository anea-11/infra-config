# Overview

Playbooks from this repository are used to:  

- configure CICD and application servers used for portfolio projects
- configure AWS EKS cluster after initial deployment
- deploy **encoding-app** with Docker Compose
- deploy **online-boutique** to AWS EKS
- deploy **Prometheus/Grafana** monitoring stack to EKS

These playbooks are invoked from https://github.com/anea-11/jenkins-utils[Jenkins CICD pipelines]

# Dockerfiles

Directory `docker` contains Dockerfiles which are used by https://github.com/anea-11/jenkins-utils[Jenkins CICD pipelines]. Dockerfile is built in-place from Jenkins pipeline. Resulting image is used as build agent which contains all the dependencies needed to deploy to EKS. See https://github.com/anea-11/jenkins-utils/blob/main/vars/deployOnlineBoutiqueToEKS.groovy[this file] to see how this is done.
