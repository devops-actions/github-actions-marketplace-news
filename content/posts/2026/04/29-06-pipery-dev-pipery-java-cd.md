---
title: Pipery Java CD
date: 2026-04-29 06:08:04 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-java-cd
marketplace: https://github.com/marketplace/actions/pipery-java-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-java-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-java-cd) to find the latest changes.

## Action Summary

The **Pipery Java CD** GitHub Action automates the continuous deployment (CD) process for Java applications by downloading artifacts (e.g., JAR files or Docker images), deploying them using various deployment targets (e.g., ArgoCD, Cloud Run, Helm, or Ansible), and verifying deployment health. It simplifies and streamlines the deployment workflow while providing structured logging through the Pipery platform for enhanced observability and traceability. This action is ideal for teams seeking to automate deployment tasks with minimal effort while maintaining visibility into their pipeline.

## What's Changed

## v1.0.0

Java CD pipeline: download JAR from GitHub release or pull Docker image, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-java-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-java-cd#readme) for the full inputs reference.
