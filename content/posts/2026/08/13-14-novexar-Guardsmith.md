---
title: GuardSmith Lint
date: 2026-08-13 14:17:36 +00:00
tags:
  - novexar
  - GitHub Actions
draft: false
repo: https://github.com/novexar/Guardsmith
marketplace: https://github.com/marketplace/actions/guardsmith-lint
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **GuardSmith is a governance tool that standardizes AI development standards and automates code review. It provides features such as generating new projects from templates, automating static analysis checks, identifying drift in policies, integrating into CI/CD pipelines, and managing multi-layered environments (OSS baseline + organization overlay + project-specific layers).**
---


Version updated for **https://github.com/novexar/Guardsmith** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardsmith-lint) to find the latest changes.

## Action Summary

**GuardSmith is a governance tool that standardizes AI development standards and automates code review. It provides features such as generating new projects from templates, automating static analysis checks, identifying drift in policies, integrating into CI/CD pipelines, and managing multi-layered environments (OSS baseline + organization overlay + project-specific layers).**

## What's Changed

## What's new

- **GitHub Action moved to the repository root** — use it with a single line:
  `uses: novexar/Guardsmith@v0.3.0` (the old `packages/action` path is removed)
- **npx-based execution** — the action now runs the published CLI via
  `npx @guardsmith/cli` (pinned with the `cli-version` input) instead of
  checking out this repository and installing dependencies. Setup steps are gone
  and runs are faster. The `guardsmith-ref` input is replaced by `cli-version`.
- npm packages (`@guardsmith/core` / `@guardsmith/cli`) remain at **0.2.1** — the CLI itself is unchanged.

## Usage

```yaml
name: GuardSmith
on: [pull_request]
permissions:
  contents: read
  pull-requests: write
jobs:
  guard:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: novexar/Guardsmith@v0.3.0
```

On violations the job fails, the console report lands in the Job Summary, a SARIF
report is uploaded (Code Scanning / artifact), and a summary comment is posted on the PR.

