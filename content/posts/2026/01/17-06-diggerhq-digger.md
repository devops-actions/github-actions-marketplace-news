---
title: run-digger
date: 2026-01-17 06:25:26 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: https://github.com/diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: taco/statesman/v0.1.29.9
dependentsNumber: "14"
---


Version updated for **https://github.com/diggerhq/digger** to version **taco/statesman/v0.1.29.9**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Action Summary

This GitHub Action, formerly known as Digger (now OpenTaco), enables seamless CI/CD automation for Terraform and OpenTofu by integrating directly into your existing CI infrastructure. It eliminates the need for separate CI systems, offering secure, cost-effective, and scalable Terraform execution with features like PR-level locks, RBAC via Open Policy Agent (OPA), drift detection, and integration with tools like Terragrunt and Checkov. This action simplifies infrastructure management by running Terraform natively in your CI, avoiding third-party dependencies and reducing complexity.

## Release notes

## Taco Statesman v0.1.29.9

### Downloads
- **Linux AMD64**: [statesman-linux-amd64](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-amd64) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-amd64.sha256))
- **Linux ARM64**: [statesman-linux-arm64](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-arm64) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-arm64.sha256))
- **Linux 386**: [statesman-linux-386](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-386) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-linux-386.sha256))
- **macOS AMD64**: [statesman-darwin-amd64](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-darwin-amd64) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-darwin-amd64.sha256))
- **macOS ARM64**: [statesman-darwin-arm64](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-darwin-arm64) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-darwin-arm64.sha256))
- **Windows AMD64**: [statesman-windows-amd64.exe](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-windows-amd64.exe) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-windows-amd64.exe.sha256))
- **Windows 386**: [statesman-windows-386.exe](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-windows-386.exe) ([checksum](https://github.com/diggerhq/digger/releases/download/taco/statesman/v0.1.29.9/statesman-windows-386.exe.sha256))

### Docker
```bash
docker pull ghcr.io/diggerhq/digger/taco-statesman:v0.1.29.9
```

### Installation
Download the appropriate binary for your platform and make it executable:
```bash
chmod +x statesman-<platform>-<arch>
sudo mv statesman-<platform>-<arch> /usr/local/bin/statesman
```

