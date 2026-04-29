---
title: Pipery Docker CD
date: 2026-04-29 06:08:13 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-docker-cd
marketplace: https://github.com/marketplace/actions/pipery-docker-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-docker-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-docker-cd) to find the latest changes.

## Action Summary

The **Pipery Docker CD** GitHub Action streamlines Continuous Deployment (CD) workflows by automating Docker image retrieval, deployment to targets like ArgoCD, Cloud Run, Helm, or Ansible, and post-deployment health checks. It solves the challenges of managing multi-step deployment pipelines with built-in structured logging and observability powered by Pipery, enabling users to monitor and verify deployments efficiently. This action provides seamless integration with container registries and a variety of deployment strategies for enhanced flexibility and control.

## What's Changed

## v1.0.0

Docker CD pipeline: pull image from registry, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-docker-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-docker-cd#readme) for the full inputs reference.
