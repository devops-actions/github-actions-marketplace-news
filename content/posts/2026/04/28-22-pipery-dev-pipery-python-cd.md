---
title: Pipery Python CD
date: 2026-04-28 22:04:27 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-python-cd
marketplace: https://github.com/marketplace/actions/pipery-python-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-python-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-python-cd) to find the latest changes.

## Action Summary

The **Pipery Python CD** GitHub Action automates the continuous deployment (CD) process for Python packages or Docker images, including downloading the artifact, deploying it to various targets (e.g., ArgoCD, Cloud Run, Helm, or Ansible), and verifying deployment health. It simplifies the deployment workflow with structured logging and full pipeline observability through the Pipery platform, providing a streamlined, configurable solution for managing deployments and post-deployment checks.

## What's Changed

## v1.0.0

Python CD pipeline: pip download or docker pull, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-python-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-python-cd#readme) for the full inputs reference.
