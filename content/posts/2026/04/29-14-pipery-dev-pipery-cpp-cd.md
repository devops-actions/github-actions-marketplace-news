---
title: Pipery C/C++ CD
date: 2026-04-29 14:41:06 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-cpp-cd
marketplace: https://github.com/marketplace/actions/pipery-c-c-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-cpp-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-c-c-cd) to find the latest changes.

## Action Summary

The **Pipery C/C++ CD GitHub Action** automates the continuous deployment (CD) process for C and C++ projects by managing tasks such as downloading artifacts or container images, deploying them to various targets (e.g., ArgoCD, Cloud Run, Helm, Ansible), and verifying deployment health. It addresses the need for seamless deployment workflows with structured logging via the Pipery platform, providing visibility into pipeline execution. Key capabilities include flexible deployment strategies, multiple deployment target options, and integration with Pipery for enhanced observability.

## What's Changed

## v1.0.0

C/C++ CD pipeline: download tarball from GitHub release or pull Docker image, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-cpp-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-cpp-cd#readme) for the full inputs reference.
