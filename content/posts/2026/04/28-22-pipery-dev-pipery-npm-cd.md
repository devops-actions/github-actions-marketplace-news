---
title: Pipery npm CD
date: 2026-04-28 22:04:38 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-npm-cd
marketplace: https://github.com/marketplace/actions/pipery-npm-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-npm-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-npm-cd) to find the latest changes.

## Action Summary

The **Pipery npm CD** GitHub Action automates the continuous deployment of npm packages or Docker images by streamlining tasks such as downloading the package/image, deploying it to targets like ArgoCD, Cloud Run, Helm, or Ansible, and verifying deployment health. It simplifies complex deployment workflows with structured logging and observability through Pipery, providing full visibility into the pipeline. This action addresses the need for consistent, automated deployments with built-in support for multiple deployment strategies and environments.

## What's Changed

## v1.0.0

npm/Node.js CD pipeline: npm pack or docker pull, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-npm-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-npm-cd#readme) for the full inputs reference.
