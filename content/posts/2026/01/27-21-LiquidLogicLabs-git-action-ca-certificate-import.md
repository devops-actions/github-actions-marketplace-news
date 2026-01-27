---
title: CA Certificate Import
date: 2026-01-27 21:42:01 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v2.0.2
dependentsNumber: "?"
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v2.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## Action Summary

The "CA Certificate Import GitHub Action" simplifies the process of installing custom SSL/TLS certificates into a CI/CD runner environment. It ensures tools like Docker and curl can securely interact with private registries and internal resources using custom certificate authorities. Key capabilities include automatic certificate source detection, system integration for trusted certificate management, and optional BuildKit configuration for enhanced Docker workflows.

## Release notes

## 📦 Uncategorized

- chore: align CI tag filtering
- chore(release): 2.0.2



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/git-action-ca-certificate-import@v2.0.2
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
