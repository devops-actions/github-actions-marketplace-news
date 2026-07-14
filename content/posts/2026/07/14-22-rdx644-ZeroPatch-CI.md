---
title: ZeroPatch CI
date: 2026-07-14 22:44:32 +00:00
tags:
  - rdx644
  - GitHub Actions
draft: false
repo: https://github.com/rdx644/ZeroPatch-CI
marketplace: https://github.com/marketplace/actions/zeropatch-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates evidence-first security assessments for GitHub Actions workflows by analyzing five high-confidence controls, identifying potential vulnerabilities, and generating a draft remediation artifact. It restricts transformations to approved SHA pins and least-privilege permissions, ensuring secure workflow execution. The action also provides an API that rejects unsupported or ambiguous findings, requiring manual review. The tool runs as a standalone application or Docker container, with options for running locally or in a production environment.
---


Version updated for **https://github.com/rdx644/ZeroPatch-CI** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zeropatch-ci) to find the latest changes.

## Action Summary

This GitHub Action automates evidence-first security assessments for GitHub Actions workflows by analyzing five high-confidence controls, identifying potential vulnerabilities, and generating a draft remediation artifact. It restricts transformations to approved SHA pins and least-privilege permissions, ensuring secure workflow execution. The action also provides an API that rejects unsupported or ambiguous findings, requiring manual review. The tool runs as a standalone application or Docker container, with options for running locally or in a production environment.

## What's Changed

- Exclude optional self-check workflow from action release (1661e95)
- Add reusable GitHub Action (3a53579)
- Merge remote-tracking branch 'origin/main' (c389673)
- Finalize ZeroPatch CI hardening and deployment (cc83d0f)
- Initial commit (3956637)
