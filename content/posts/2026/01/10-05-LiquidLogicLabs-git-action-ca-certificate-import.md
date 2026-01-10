---
title: CA Certificate Import
date: 2026-01-10 05:31:16 +00:00
tags:
  - LiquidLogicLabs
  - GitHub Actions
draft: false
repo: https://github.com/LiquidLogicLabs/git-action-ca-certificate-import
marketplace: https://github.com/marketplace/actions/ca-certificate-import
version: v1.1.2
dependentsNumber: "?"
---


Version updated for **https://github.com/LiquidLogicLabs/git-action-ca-certificate-import** to version **v1.1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ca-certificate-import) to find the latest changes.

## Action Summary

The CA Certificate Import GitHub Action automates the installation of custom SSL/TLS certificates into the CI/CD runner environment, ensuring tools like Docker, HTTP clients, and package managers can securely interact with private registries and internal resources using custom certificate authorities. It supports multiple input methods for certificate provisioning, integrates with the system CA store, and optionally generates BuildKit configurations for Docker builds, simplifying the process of managing trusted certificates in CI/CD pipelines.

## Release notes

## 📦 Uncategorized

- refactor: consolidate workflows and update best practices
- Add floating tag support using simbo/action-semver-release-action
- Update action-best-practices.mdc with floating tag support and CI improvements
- chore: standardize release process and documentation structure
- docs: update action best practices and release workflow with LiquidLogicLabs actions
- refactor: reorganize workflows to follow new pattern with reusable CI workflow
- Update documentation and configuration files
- chore(release): 1.1.1
- fix: Remove unnecessary condition from test workflow job
- ci: Add validation job to CI workflow for composite action
- chore(release): 1.1.2



<details>
<summary>Pull Requests</summary>

#{{PR_LIST}}
</details>

---

### Usage

```yaml
- uses: LiquidLogicLabs/ca-certificate-import-action@v1.1.2
  with:
    certificate-source: 'path/to/cert.crt'
```

### Installation

The certificate will be installed to the system CA store and trusted by:
- ✅ Docker (push/pull from registries with custom certs)
- ✅ curl, wget, and other HTTP clients
- ✅ pip, npm, apt, and other package managers
- ✅ Git operations over HTTPS
- ✅ Any tool that uses the system CA store
