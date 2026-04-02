---
title: UCP Profile Validator
date: 2026-04-02 13:58:39 +00:00
tags:
  - Nolpak14
  - GitHub Actions
draft: false
repo: https://github.com/Nolpak14/ucp-validate-action
marketplace: https://github.com/marketplace/actions/ucp-profile-validator
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Nolpak14/ucp-validate-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ucp-profile-validator) to find the latest changes.

## Action Summary

The **UCP Validate Action** is a GitHub Action designed to automate the validation of Universal Commerce Protocol (UCP) profiles and assess AI readiness scores within CI/CD pipelines. It helps identify UCP compliance issues, grade AI readiness, and ensure schema accuracy before deployment, reducing the risk of errors and enhancing AI optimization. Key features include 4-level validation, AI readiness grading (A-F), detailed scoring, and optional pull request comments for seamless integration into development workflows.

## What's Changed

## UCP Validate Action v1.0.0

Validate UCP (Universal Commerce Protocol) profiles and check AI readiness scores in your CI/CD pipeline.

### Features
- Validate any domain's UCP profile via the ucptools.dev API
- Configurable failure thresholds (grade and/or score)
- Automatic PR comments with score breakdown and issues
- GitHub step summary output
- 5 outputs: score, grade, ucp-found, passed, result-json

### Usage

```yaml
- uses: Nolpak14/ucp-validate-action@v1
  with:
    domain: 'mystore.com'
    fail-on-grade: 'D'
    fail-on-score: '60'
```

See [README](https://github.com/Nolpak14/ucp-validate-action#readme) for full documentation.
