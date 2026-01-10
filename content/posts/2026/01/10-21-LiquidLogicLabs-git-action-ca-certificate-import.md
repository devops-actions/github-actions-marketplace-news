---
title: CA Certificate Import
date: 2026-01-10 21:23:40 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## Action Summary

The CA Certificate Import GitHub Action automates the installation of custom SSL/TLS certificates into CI/CD runner environments, ensuring tools like Docker and curl can securely interact with private registries and internal resources that use custom certificate authorities. It simplifies certificate management by auto-detecting source types (file, URL, or inline content), validating formats, and integrating certificates into the system CA store, with optional support for generating BuildKit configuration files. This action addresses compatibility issues with custom certificate setups and enhances security and efficiency in CI/CD workflows.

## Release notes

## 📦 Uncategorized

- docs: consolidate contributing and maintainer docs into DEVELOPMENT.md
- feat!: implement auto-detection and change debug to verbose input
- chore(release): 2.0.0



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/git-action-ca-certificate-import@v2.0.0
  with:
    certificate: 'path/to/cert.crt'  # Auto-detects: file path, URL, or inline content
```

### Installation

The certificate will be installed to the system CA store and trusted by:
- ✅ Docker (push/pull from registries with custom certs)
- ✅ curl, wget, and other HTTP clients
- ✅ pip, npm, apt, and other package managers
- ✅ Git operations over HTTPS
- ✅ Any tool that uses the system CA store
