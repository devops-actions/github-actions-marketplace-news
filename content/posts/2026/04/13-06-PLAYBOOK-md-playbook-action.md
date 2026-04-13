---
title: PLAYBOOK.md Validate
date: 2026-04-13 06:27:39 +00:00
tags:
  - PLAYBOOK-md
  - GitHub Actions
draft: false
repo: https://github.com/PLAYBOOK-md/playbook-action
marketplace: https://github.com/marketplace/actions/playbook-md-validate
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PLAYBOOK-md/playbook-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/playbook-md-validate) to find the latest changes.

## Action Summary

The PLAYBOOK.md Validate Action is a GitHub Action designed to automatically validate `.playbook.md` files in a repository, particularly during pull requests. It identifies errors and warnings, provides inline PR annotations, and generates a summary table in the GitHub Actions job summary, helping teams ensure compliance and consistency in their playbook documentation. The action supports custom file patterns, strict validation mode, and requires no external dependencies on the runner.

## What's Changed

  ## PLAYBOOK.md Validate Action v1.0.0

  Validate `.playbook.md` files against the [PLAYBOOK.md specification](https://github.com/PLAYBOOK-MD/playbook-spec) directly in your CI pipeline.

  ### Features

  - **Spec-compliant validation** — checks all fatal errors (F1–F5) and warnings (W1–W7) defined in the PLAYBOOK.md spec
  - **Inline PR annotations** — errors and warnings appear directly on the pull request diff, with file path and line number
  - **Job summary table** — markdown table of results written to `$GITHUB_STEP_SUMMARY`
  - **Custom glob patterns** — validate specific directories or file patterns
  - **Strict mode** — optionally treat warnings as errors for stricter enforcement
  - **Structured outputs** — `valid`, `total`, `errors`, `warnings` available for downstream steps
  - **Zero setup** — uses `@playbook-md/core` bundled directly, no external dependencies on the runner

  ### Quick start

  ```yaml
  name: Validate Playbooks
  on: [pull_request]
  jobs:
    validate:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: PLAYBOOK-MD/playbook-action@v1

  Inputs

  ┌─────────┬─────────────────────────────────┬──────────────────┐
  │  Input  │           Description           │     Default      │
  ├─────────┼─────────────────────────────────┼──────────────────┤
  │ pattern │ Glob pattern for playbook files │ **/*.playbook.md │
  ├─────────┼─────────────────────────────────┼──────────────────┤
  │ strict  │ Treat warnings as errors        │ false            │
  └─────────┴─────────────────────────────────┴──────────────────┘

  Badge

  ![PLAYBOOK.md Validated](https://img.shields.io/badge/PLAYBOOK.md-validated-FF5F1F)

  ---
  Part of the https://playbook.style open specification ecosystem.
