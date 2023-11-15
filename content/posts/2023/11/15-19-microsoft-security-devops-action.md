---
title: security-devops-action
date: 2023-11-15 19:05:18 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: microsoft/security-devops-action
marketplace: https://github.com/marketplace/actions/security-devops-action
version: v1.10.0
dependentsNumber: "986"
---


Version updated for **microsoft/security-devops-action** to version **v1.10.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **986** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/security-devops-action) to find the latest changes.

## Release notes

This release brings introduces our first `pre` and `post` job feature, `container-mapping`, as an opt-in feature. It runs docker commands to see which containers have been created during the pipeline for integration with **Microsoft Defender for DevOps**.

To configure **Container Mapping** to send conatiner data to **Microsoft Defender for DevOps**, include `container-mapping` as a tool:
```yaml
- uses: microsoft/security-devops-action@v1
  id: msdo
  with:
    includeTools: container-mapping
```

This will run all the analyzers defined by the configured or defaulted policy in addition to `container-mapping`. To only run this feature, define `container-mapping` as the only `tool` to run:
```yaml
- uses: microsoft/security-devops-action@v1
  id: msdo
  with:
    tools: container-mapping
```

---

In future releases, we will use this to auto-configure container scanning as well as introduce additional scanning optimizations and capabilities.

