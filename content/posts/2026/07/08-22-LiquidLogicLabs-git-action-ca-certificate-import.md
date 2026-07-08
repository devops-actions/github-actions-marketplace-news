---
title: CA Certificate Import
date: 2026-07-08 22:24:11 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v3.0.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v3.0.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## What's Changed

## 📦 Uncategorized

- chore: standardize tooling to current playbook
- chore(release): 3.0.3



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/git-action-ca-certificate-import@v3.0.3
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
