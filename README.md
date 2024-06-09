MediaWiki Deployment in Kubernetes with Helm

Table of Contents

- #introduction
- #prerequisites
- #installation
- #configuration
- #deployment
- #upgrading
- #troubleshooting

Introduction

This repository contains the configuration files for deploying MediaWiki in Kubernetes using Helm.

Prerequisites

- Kubernetes cluster (version 1.22 or later)
- Helm (version 3.8 or later)
- MariaDB (version 10.6 or later)

Installation

1. Clone this repository: `git clone (link unavailable)
2. Install Helm: helm init
3. Install MariaDB: helm install mariadb

Configuration

1. Edit values.yaml to configure MediaWiki settings
2. Edit mariadb-configmap.yaml to configure MariaDB settings

Deployment

1. Deploy MediaWiki: helm install mediawiki
2. Verify deployment: kubectl get pods

Upgrading

1. Update values.yaml with new configuration
2. Run helm upgrade mediawiki

Troubleshooting

- Check Helm logs: helm logs
- Check Kubernetes logs: kubectl logs
