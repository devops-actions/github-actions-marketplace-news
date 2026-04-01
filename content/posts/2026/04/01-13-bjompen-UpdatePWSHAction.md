---
title: PWSHUpdater
date: 2026-04-01 13:59:02 +00:00
tags:
  - bjompen
  - GitHub Actions
draft: false
repo: https://github.com/bjompen/UpdatePWSHAction
marketplace: https://github.com/marketplace/actions/pwshupdater
version: v1.1.0
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/bjompen/UpdatePWSHAction** to version **v1.1.0**.

- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pwshupdater) to find the latest changes.

## Action Summary

The "Update PWSH Action" is a GitHub Action and Azure DevOps task designed to automate the process of updating the PowerShell version used in cloud CI/CD runners. It allows users to install a specific version, such as the latest, nightly, static, or a fixed version of PowerShell, addressing the need to test or run code with versions other than the default LTS. This action streamlines version management and ensures compatibility with different development or testing requirements.

## What's Changed

## What's changed

- Updated azure-pipelines-task-lib from ^4.17.3 to ^5.2.8 (fixes high severity ReDoS in minimatch)
- Fixed moderate severity brace-expansion vulnerability
- Fixed low severity qs DoS vulnerability
- Added typescript as a dev dependency for local builds

## Usage

### GitHub action

```yaml
- uses: bjompen/UpdatePWSHAction@v1.1.0
  with:
    ReleaseVersion: 'stable'
```

### Azure DevOps

```yaml
- task: PWSHUpdater@1
```

