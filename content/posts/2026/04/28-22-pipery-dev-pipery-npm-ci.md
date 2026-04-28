---
title: Pipery npm CI
date: 2026-04-28 22:04:32 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-npm-ci
marketplace: https://github.com/marketplace/actions/pipery-npm-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-npm-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-npm-ci) to find the latest changes.

## Action Summary

The **Pipery npm CI** GitHub Action provides a comprehensive, reusable CI pipeline for npm/Node.js projects, integrating structured logging via the Pipery platform. It automates key development tasks such as static code analysis (SAST), dependency auditing (SCA), linting, building, testing, semantic versioning, packaging, publishing to npm, and reintegration into the default branch. This action simplifies pipeline management, enhances observability with structured JSONL logs, and streamlines the entire CI workflow for Node.js applications.

## What's Changed

## v1.0.0

Complete npm/Node.js CI pipeline: SAST, SCA, ESLint, build, test, version, npm pack, publish + SHA dist-tag, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-npm-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-npm-ci#readme) for the full inputs reference.
