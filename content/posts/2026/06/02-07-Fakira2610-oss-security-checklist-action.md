---
title: OSS Security Checklist
date: 2026-06-02 07:00:42 +00:00
tags:
  - Fakira2610
  - GitHub Actions
draft: false
repo: https://github.com/Fakira2610/oss-security-checklist-action
marketplace: https://github.com/marketplace/actions/oss-security-checklist
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Fakira2610/oss-security-checklist-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-checklist) to find the latest changes.

## What's Changed

## OSS Security Checklist Action v0.1.0

Initial public release of **OSS Security Checklist Action**, a lightweight GitHub Action and CLI for checking essential security hygiene in open-source repositories.

This release provides a deterministic baseline scanner designed to help maintainers identify common repository and GitHub Actions security issues early.

### Included checks

#### Repository hygiene

* Detect missing `SECURITY.md`
* Detect missing `LICENSE`
* Detect missing `CONTRIBUTING.md`
* Detect missing Dependabot configuration

#### GitHub Actions security

* Detect third-party actions that are not pinned to a full commit SHA
* Detect workflows without explicit permissions
* Detect workflows using `permissions: write-all`
* Detect risky `pull_request_target` usage combined with checkout
* Detect usage of self-hosted runners

#### Script injection risks

* Detect direct interpolation of pull request titles into shell commands
* Detect direct interpolation of issue-controlled input into shell commands
* Detect direct interpolation of branch-controlled input into shell commands

### CLI usage

Run a scan locally:

```bash
node bin/oss-security-checklist.js scan .
```

Generate a Markdown report:

```bash
node bin/oss-security-checklist.js scan . --format markdown
```

Generate a JSON report:

```bash
node bin/oss-security-checklist.js scan . --format json
```

List available rules:

```bash
node bin/oss-security-checklist.js rules
```

### GitHub Action usage

Add the following workflow to your repository:

```yaml
name: OSS Security Checklist

on:
  pull_request:
  push:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read

jobs:
  scan:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@FULL_COMMIT_SHA

      - uses: Fakira2610/oss-security-checklist-action@v0.1.0
        with:
          fail-on-severity: high
          output-format: markdown
```

Replace `FULL_COMMIT_SHA` with a reviewed full commit SHA for `actions/checkout`.

### Testing

This release includes automated tests for:

* A repository with a clean security baseline
* A repository fixture containing intentionally risky configurations

### Scope

This tool performs baseline checks only. A passing score does not guarantee that a repository is free from vulnerabilities.

Use it alongside code review, dependency scanning, secret scanning, CodeQL, and other security tools.

### Next steps

Planned improvements include:

* SARIF report output
* Configurable ignored rules
* File and line-number annotations
* Additional repository health checks
* Improved GitHub Actions supply-chain checks

