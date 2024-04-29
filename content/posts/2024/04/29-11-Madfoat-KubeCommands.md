---
title: KubeCommands v1.28.4
date: 2024-04-29 11:31:43 +00:00
tags:
  - Madfoat
  - GitHub Actions
draft: false
repo: Madfoat/KubeCommands
marketplace: https://github.com/marketplace/actions/kubecommands-v1-28-4
version: 1.28.4
dependentsNumber: "?"
---


Version updated for **Madfoat/KubeCommands** to version **1.28.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kubecommands-v1-28-4) to find the latest changes.

## Release notes

**Kube Commands Dockerfile**
- Create a Dockerfile to build a container image for running Kubernetes (Kube) commands.

- The Dockerfile should include the necessary tools and dependencies for interacting with a Kubernetes cluster, such as the kubectl command-line tool.

- This will allow you to run Kube commands from within a containerized environment, making it easier to automate and standardize your Kubernetes workflows.

**CI for Deploying Docker Images**

- Set up a Continuous Integration (CI) pipeline to automatically build and deploy new Docker images.

- The CI pipeline should: 
1. Build a new Docker image whenever changes are made to the codebase.
2. Push the new image to a Docker registry, such as Docker Hub or a private registry.
3. Trigger a deployment of the new image to your Kubernetes cluster.

- This will help ensure that your Kubernetes environment is always running the latest version of your application, and will streamline your deployment process.
