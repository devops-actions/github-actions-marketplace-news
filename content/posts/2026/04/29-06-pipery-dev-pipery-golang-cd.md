---
title: Pipery Go CD
date: 2026-04-29 06:08:09 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-golang-cd
marketplace: https://github.com/marketplace/actions/pipery-go-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-golang-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-go-cd) to find the latest changes.

## Action Summary

The **Pipery Go CD** GitHub Action automates the continuous deployment process for Go applications by handling artifact or container image retrieval, deployment using platforms like ArgoCD, Cloud Run, Helm, or Ansible, and post-deployment health verification. It provides structured logging via the Pipery platform, enabling enhanced CI/CD visibility and streamlined operations. This action helps developers save time and reduce deployment complexity by integrating key steps into a reusable and observable pipeline.

## What's Changed

## v1.0.0

Go CD pipeline: download GitHub release artifact or Docker image, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-golang-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-golang-cd#readme) for the full inputs reference.
