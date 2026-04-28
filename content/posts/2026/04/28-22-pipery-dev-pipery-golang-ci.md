---
title: Pipery Go CI
date: 2026-04-28 22:04:43 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-golang-ci
marketplace: https://github.com/marketplace/actions/pipery-go-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-golang-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-go-ci) to find the latest changes.

## Action Summary

The **Pipery Go CI** GitHub Action provides a reusable, automated pipeline for Go projects, integrating key CI tasks such as static analysis, security checks, linting, building, testing, semantic versioning, packaging, releasing, and branch reintegration. It leverages structured JSONL logging via the Pipery platform, offering enhanced observability for CI/CD processes without additional instrumentation. This action simplifies and streamlines the development lifecycle for Go applications, improving efficiency and reducing manual effort.

## What's Changed

## v1.0.0

Complete Go CI pipeline: SAST, SCA, golangci-lint, build, test, version, cross-compile, GitHub Release + SHA tag, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-golang-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-golang-ci#readme) for the full inputs reference.
