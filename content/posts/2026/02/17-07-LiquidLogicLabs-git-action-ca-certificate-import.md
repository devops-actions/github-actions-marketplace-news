---
title: CA Certificate Import
date: 2026-02-17 07:37:57 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v3.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v3.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## Action Summary

The CA Certificate Import GitHub Action automates the process of installing custom SSL/TLS certificates into the CI/CD runner environment, ensuring tools like Docker can seamlessly interact with private registries and internal resources that rely on custom certificate authorities. It simplifies certificate management by supporting multiple input methods (file, URL, or inline content) and optionally generates BuildKit configuration files for Docker workflows. This action enhances reliability, security, and compatibility in workflows requiring trusted certificates.

## Release notes

## 📦 Uncategorized

- docs: sync action best-practices rules, add README Permissions section, kebab-case in docs, standardize version/release npm scripts
- ci: update workflows
- chore(release): 3.0.1



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/git-action-ca-certificate-import@v3.0.1
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
