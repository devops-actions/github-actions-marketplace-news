---
title: Needlepath Select
date: 2026-08-22 06:17:40 +00:00
tags:
  - nextmoca
  - GitHub Actions
draft: false
repo: https://github.com/nextmoca/needlepath-select-action
marketplace: https://github.com/marketplace/actions/needlepath-select
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, Needlepath Select, optimizes AI workflows by preparing smaller, more relevant contexts for downstream tasks without altering original content or calling models. It uses a verbatim-selection engine to filter context records and is provider-neutral, shadowing default behavior while allowing explicit selection in `select` mode. The action ensures exact fail-open outcomes and reports Token and reduction figures as estimates rather than billed usage.
---


Version updated for **https://github.com/nextmoca/needlepath-select-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/needlepath-select) to find the latest changes.

## Action Summary

This GitHub Action, Needlepath Select, optimizes AI workflows by preparing smaller, more relevant contexts for downstream tasks without altering original content or calling models. It uses a verbatim-selection engine to filter context records and is provider-neutral, shadowing default behavior while allowing explicit selection in `select` mode. The action ensures exact fail-open outcomes and reports Token and reduction figures as estimates rather than billed usage.

## What's Changed

First public release.

Provider-neutral Needlepath context selection for GitHub agent workflows: verbatim selection (nothing paraphrased — output is extracts of the workflow context you already have), shadow-default operation, and exact fail-open (any decline, error, or timeout preserves the original context byte-for-byte; a failed selection can never break your workflow).

- `workflow-type`: custom, pr-review, ci-diagnosis, or release-notes
- Mandatory material (`AGENTS.md`, agent instruction files, `.github/needlepath/policy.md`) never enters selection and is always passed through
- CI: typecheck, tests, bundle-rebuild diff, SBOM, CodeQL, and a 3-OS fail-open smoke on every push
