---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-06 21:42:26 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.12.2
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.12.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action that automates the creation of hardened CI/CD DevSecOps pipelines by detecting the project's technology stack and generating security-focused workflows tailored to it. It simplifies the process of setting up robust pipelines by integrating tools for static analysis (SAST), secret detection, vulnerability scanning, and SBOM generation, and automatically opens a pull request with the generated workflows. This action helps developers ensure secure and efficient development practices while reducing manual configuration effort.

## What's Changed

## Bug fixes

### Incorrect workflow references in monorepo orchestrator

In monorepo mode, the generated `<component>-ci.yml` orchestrator was referencing
base workflow names (`lint.yml`, `test.yml`, `security.yml`, `docker.yml`) instead of
the prefixed names (`backend-lint.yml`, `backend-test.yml`, etc.).

The fix propagates the component prefix through the template data so the orchestrator
correctly references its sibling workflows:

```yaml
# before
uses: ./.github/workflows/lint.yml

# after
uses: ./.github/workflows/backend-lint.yml
```

Single-repo behaviour is unchanged — the prefix is empty and the references remain
`lint.yml`, `test.yml`, etc.

