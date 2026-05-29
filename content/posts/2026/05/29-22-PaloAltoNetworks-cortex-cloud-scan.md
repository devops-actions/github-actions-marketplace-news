---
title: Cortex Cloud Scan
date: 2026-05-29 22:47:30 +00:00
tags:
  - PaloAltoNetworks
  - GitHub Actions
draft: false
repo: https://github.com/PaloAltoNetworks/cortex-cloud-scan
marketplace: https://github.com/marketplace/actions/cortex-cloud-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PaloAltoNetworks/cortex-cloud-scan** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cortex-cloud-scan) to find the latest changes.

## Action Summary

The **Cortex Cloud Scan GitHub Action** provides an automated solution for security scanning across code repositories, container images, and APIs. It integrates with the Cortex Cloud platform to identify vulnerabilities, misconfigurations, and secrets in source code, containers, and APIs, ensuring comprehensive security coverage. This action streamlines the scanning process by automatically downloading the required CLI tool and supports various scan types, making it a valuable tool for enhancing DevSecOps workflows.

## What's Changed

## Cortex Cloud Scan v1.0.0

GitHub Action for Cortex Cloud security scanning.

### Supported Scan Types
- **Code Security**: Secrets, IaC, SCA
- **Container Workload Protection**: Image vulnerabilities and malware
- **API Security**: API vulnerability testing

### Installation
```yaml
- uses: PaloAltoNetworks/cortex-cloud-scan@v1.0.0
  with:
    scan-type: code
    api-base-url: 
    api-key: 
    api-key-id: 
    directory: .
```

### Documentation
- [README](README.md)
- [Quick Start Guide](QUICKSTART.md)
- [Examples](examples/)

### Full Changelog
See [CHANGELOG.md](CHANGELOG.md) for details.

