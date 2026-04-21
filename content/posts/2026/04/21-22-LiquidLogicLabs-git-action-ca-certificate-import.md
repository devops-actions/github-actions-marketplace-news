---
title: CA Certificate Import
date: 2026-04-21 22:01:17 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v3.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v3.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## Action Summary

The **CA Certificate Import GitHub Action** automates the installation of custom SSL/TLS certificates into CI/CD runner environments, ensuring tools like Docker can interact with private registries or internal resources using non-standard certificate authorities. It simplifies certificate management by supporting multiple input methods (file, URL, or inline content), validating certificates, and optionally generating BuildKit configuration files for Docker integration. This action solves the problem of enabling secure communication with custom CAs in automated workflows.

## What's Changed

## 📦 Uncategorized

- chore: migrate from standard-version to npm lifecycle hooks + conventional-changelog-cli
- chore: add devcontainer with Docker and act support
- chore: migrate devcontainer to file-based secrets
- chore: harden install-certificate shell script
- chore(ci): bump actions/checkout and actions/setup-node to v6
- chore(release): 3.0.2



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/git-action-ca-certificate-import@v3.0.2
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
