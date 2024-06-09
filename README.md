MediaWiki Deployment in Kubernetes with Helm

Table of Contents

- introduction
- prerequisites
- installation
- configuration
- deployment
- upgrading
- troubleshooting

Introduction

This repository contains the configuration files for deploying MediaWiki in Kubernetes using Helm.

Prerequisites

- Kubernetes cluster 
- Helm 
- MariaDB 

Installation


1. Install Helm: helm init
2. Install MariaDB: helm install mariadb

Configuration

1. Edit values.yaml to configure MediaWiki settings


Deployment

1. Deploy MediaWiki: helm install mediawiki
2. Verify deployment: kubectl get pods

Upgrading

1. Update values.yaml with  configuration
2. Run helm upgrade mediawiki

Troubleshooting

- Check Helm logs: helm logs
- Check Kubernetes logs: kubectl logs

Scaling Issues

While MediaWiki can run smoothly in a single instance setup, scaling it on Kubernetes to handle increased load or ensure high availability can present certain challenges.
-  A single MariaDB instance can become a bottleneck as traffic increases.
-  Inefficient resource allocation can lead to performance issues or increased costs.

Solutions

 - Use managed database services (e.g., Amazon RDS, Google Cloud SQL) that offer built-in scalability and high availability.
 - Set appropriate CPU and memory requests and limits in the Kubernetes deployment YAML to ensure efficient resource allocation

