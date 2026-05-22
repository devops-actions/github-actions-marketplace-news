---
title: Pramaan Evidence Bundle Verifier
date: 2026-05-22 06:30:00 +00:00
tags:
  - tsinghkothari-droid
  - GitHub Actions
draft: false
repo: https://github.com/tsinghkothari-droid/pramaan
marketplace: https://github.com/marketplace/actions/pramaan-evidence-bundle-verifier
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tsinghkothari-droid/pramaan** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pramaan-evidence-bundle-verifier) to find the latest changes.

## Action Summary

Pramaan is a GitHub Action and verification framework designed to build trust in AI-generated pull requests by creating auditable proof bundles that document code changes, execution evidence, and potential risks. It addresses the limitations of traditional CI systems by providing structured evidence of code correctness, identifying residual risks, and offering tools for additional static checks, sandboxed testing, and mutation analysis. Its key capabilities include generating hash-linked artifacts, performing integrity verification, and enabling comprehensive code review with risk assessment insights.

## What's Changed

## Pramaan Evidence Bundle Verifier

Pramaan is a GitHub Action for AI-authored pull request verification. It runs Pramaan on pull requests and publishes a risk-aware proof bundle summary so reviewers can see what was checked, what was skipped, what failed, and what evidence remains.

### Use

```yaml
- uses: tsinghkothari-droid/pramaan@v0.1.1
  with:
    fail-on: actionable
```

### Recommended workflow

```yaml
name: Pramaan

on:
  pull_request:

permissions:
  contents: read

jobs:
  pramaan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - uses: tsinghkothari-droid/pramaan@v0.1.1
        with:
          fail-on: actionable
```

### With artifact attestation

```yaml
name: Pramaan

on:
  pull_request:

permissions:
  contents: read
  id-token: write
  attestations: write

jobs:
  pramaan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - uses: tsinghkothari-droid/pramaan@v0.1.1
        with:
          fail-on: actionable
          attest: "true"
```

### Current status

This is an early public preview of the GitHub Action.

Pramaan is an evidence-bundle verifier, not a correctness prover. It helps reviewers inspect AI-authored pull requests by surfacing verification receipts, skipped stages, policy status, bundle artifacts, and residual risk.

### Included

- Composite GitHub Action
- Pull request base/head ref resolution
- Pramaan proof bundle generation
- GitHub job summary rendering
- Optional proof bundle artifact upload
- Optional GitHub artifact attestation
- Configurable failure policy
