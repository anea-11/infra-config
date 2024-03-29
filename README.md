# Overview

Playbooks from this repository are used to:  

- configure CICD and application servers used for portfolio projects
- configure AWS EKS cluster after initial deployment
- deploy **encoding-app** with Docker Compose
- deploy **online-boutique** to AWS EKS
- deploy **Prometheus/Grafana** monitoring stack to EKS

These playbooks are invoked from [Jenkins CICD pipelines](https://github.com/anea-11/jenkins-utils)

# Dockerfiles

Directory `docker` contains Dockerfiles which are used by [Jenkins CICD pipelines](https://github.com/anea-11/jenkins-utils). Dockerfile is built in-place from Jenkins pipeline. Resulting image is used as build agent which contains all the dependencies needed to deploy to EKS. See [this file](https://github.com/anea-11/jenkins-utils/blob/main/vars/deployOnlineBoutiqueToEKS.groovy) to see how this is done.
