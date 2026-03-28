---
title: aminet Supply Chain Review
date: 2026-03-28 05:58:39 +00:00
tags:
  - gorira-tatsu
  - GitHub Actions
draft: false
repo: https://github.com/gorira-tatsu/aminet
marketplace: https://github.com/marketplace/actions/aminet-supply-chain-review
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/gorira-tatsu/aminet** to version **v0.2.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aminet-supply-chain-review) to find the latest changes.

## Action Summary

The `aminet` GitHub Action is a tool designed to automate the review of npm and Python dependencies in pull requests by analyzing changes in dependency graphs, vulnerabilities, licenses, security signals, and other supply chain factors. It provides focused PR comments, machine-readable outputs, and SBOMs, helping teams identify risks such as outdated packages, license violations, and security issues. This action streamlines dependency management workflows by offering lightweight and customizable integration for projects, including support for monorepos and lockfile detection.

## Release notes

## aminet 0.2.1

npm: https://www.npmjs.com/package/aminet

### Install

```bash
npx aminet@0.2.1 --help
npm install -g aminet
```

### GitHub Action

```yaml
uses: gorira-tatsu/aminet@v0.2.1
```

npmjs.org is the canonical package registry for aminet.

---

## What's Changed
* fix: sync version metadata with package version by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/28
* test: close remaining Python coverage gaps by @gorira-tatsu in https://github.com/gorira-tatsu/aminet/pull/29


**Full Changelog**: https://github.com/gorira-tatsu/aminet/compare/v0.2.0...v0.2.1

