---
title: Pipery Rust CD
date: 2026-04-28 22:04:23 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-rust-cd
marketplace: https://github.com/marketplace/actions/pipery-rust-cd
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-rust-cd** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-rust-cd) to find the latest changes.

## Action Summary

The **Pipery Rust CD** GitHub Action automates the deployment of Rust applications by downloading a binary or container image, deploying it to various targets (e.g., ArgoCD, Cloud Run, Helm, or Ansible), and verifying deployment health. It streamlines continuous delivery workflows by integrating structured logging via Pipery, offering enhanced visibility into pipeline execution. This action simplifies deployment processes, supports multiple deployment strategies, and ensures reliable monitoring through detailed logs.

## What's Changed

## v1.0.0

Rust CD pipeline: download binary from GitHub release or pull Docker image, deploy via ArgoCD/Cloud Run/Helm/Ansible, verify deployment status.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-rust-cd@v1
```

See the [README](https://github.com/pipery-dev/pipery-rust-cd#readme) for the full inputs reference.
