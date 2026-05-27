---
title: Rafter Security Scan
date: 2026-05-27 06:33:22 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.8.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.8.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## Action Summary

The **Rafter CLI** GitHub Action is a security-focused tool designed to automate the scanning of code repositories for vulnerabilities, misconfigurations, and other security risks. It simplifies the process of identifying and addressing security issues by integrating seamlessly into CI/CD pipelines. The action provides robust capabilities to enable real-time scanning, reporting, and compliance checks, enhancing the security posture of software projects.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.8.2
```

**Python:**
```bash
pip install rafter-cli==0.8.2
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* fix(ci): drop bogus clawhub verify step + retry PyPI smoke install by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/106
* docs: PR #72 family postmortem — diagnosis + dispositions (sable-5gb) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/107
* fix(ci): retry-poll npm registry index in smoke-test-node (sable-bac) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/108
* fix(sable-1ik): local secrets scanner respects .gitignore by default (user review feedback) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/139
* chore(release): bump to v0.8.2 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/140
* ci(sable-ibd): migrate npm publish to GitHub Actions OIDC Trusted Publishing by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/142
* fix(publish): rename publish.yml → publish.yaml; --skip-existing on PyPI upload by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/143
* fix(publish): add repository/homepage/bugs/license/author metadata to node/package.json by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/145


**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.8.1...v0.8.2
