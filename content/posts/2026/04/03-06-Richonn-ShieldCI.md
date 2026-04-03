---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-03 06:18:58 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.10.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action that automates the creation of secure and optimized CI/CD pipelines for DevSecOps by detecting the project stack, generating workflows tailored to the project’s needs, and opening a pull request with the proposed workflows. It simplifies the integration of best practices like static code analysis (SAST), vulnerability scanning, and secret detection, addressing the challenges of setting up robust, security-focused pipelines. Key capabilities include automated stack detection, support for multiple languages, Docker and Kubernetes workflow generation, and integration with security tools like Trivy, Gitleaks, CodeQL, and Semgrep.

## What's Changed

## What's new

Generated Docker workflows now build images for both `linux/amd64` and `linux/arm64` by default.

This covers Apple Silicon (M-series), AWS Graviton, and any other ARM64 environment without any extra configuration.

### How it works

`docker/build-push-action` is called with:

```yaml
platforms: linux/amd64,linux/arm64
```

`docker/setup-buildx-action` (already present in the workflow) handles the cross-compilation transparently via QEMU.

No configuration required.

