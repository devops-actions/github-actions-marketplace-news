---
title: aminet Supply Chain Review
date: 2026-04-19 13:56:35 +00:00
tags:
  - gorira-tatsu
  - GitHub Actions
draft: false
repo: https://github.com/gorira-tatsu/aminet
marketplace: https://github.com/marketplace/actions/aminet-supply-chain-review
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/gorira-tatsu/aminet** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aminet-supply-chain-review) to find the latest changes.

## Action Summary

The `aminet` GitHub Action and CLI tool automates the analysis and review of npm and Python dependencies to identify risks such as vulnerabilities, license issues, and supply chain concerns. It simplifies dependency management by generating detailed security and compliance reports, which can be output as terminal logs, JSON files, SBOMs, or pull request comments. Designed for integration into GitHub workflows, it enables teams to perform automated dependency reviews directly within pull requests, focusing on changes to direct dependencies and ensuring secure and compliant software development practices.

## What's Changed

## aminet 0.4.0

npm: https://www.npmjs.com/package/aminet

### Install

```bash
npx aminet@0.4.0 --help
npm install -g aminet
```

### GitHub Action

```yaml
uses: gorira-tatsu/aminet@v0.4.0
```

npmjs.org is the canonical package registry for aminet.

---

## What's Changed
* feat: complete Python review support by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/52
* feat: improve private registry init flow by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/53
* chore: clarify degraded cache mode by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/55
* test: cover Python lockfile analyze flows by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/57
* refactor: share Python output note semantics by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/58
* [codex] Improve matrix PR review comments by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/47
* docs: clarify private registry auth choices by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/54
* docs: define v1 release criteria by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/59
* docs: define Python lockfile support strategy by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/56


**Full Changelog**: https://github.com/gorira-tatsu/aminet/compare/v0.3.0...v0.4.0

