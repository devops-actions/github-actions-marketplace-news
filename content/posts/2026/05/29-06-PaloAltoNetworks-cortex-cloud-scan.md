---
title: Cortex Cloud Scan
date: 2026-05-29 06:41:10 +00:00
tags:
  - PaloAltoNetworks
  - GitHub Actions
draft: false
repo: https://github.com/PaloAltoNetworks/cortex-cloud-scan
marketplace: https://github.com/marketplace/actions/cortex-cloud-scan
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PaloAltoNetworks/cortex-cloud-scan** to version **v1.0.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cortex-cloud-scan) to find the latest changes.

## Action Summary

The **Cortex Cloud Scan GitHub Action** integrates the Cortex CLI into GitHub workflows, enabling automated security scanning for source code, container images, and APIs. It identifies vulnerabilities, misconfigurations, secrets, and malware, addressing key security concerns in software development pipelines. The action automates the installation of the Cortex CLI and supports multiple scan types, helping teams enhance security posture with minimal manual effort.

## What's Changed

## Cortex Cloud Scan v1.0.1

GitHub Action for Cortex Cloud security scanning.

### Supported Scan Types
- **Code Security**: Secrets, IaC, SCA
- **Container Workload Protection**: Image vulnerabilities and malware
- **API Security**: API vulnerability testing

### Installation
```yaml
- uses: PaloAltoNetworks/cortex-cloud-scan@v1.0.1
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

