---
title: Harnessie Verify
date: 2026-08-21 06:30:10 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/harnessie-verify-action
marketplace: https://github.com/marketplace/actions/harnessie-verify
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The harnessie-verify-action automates the verification of claims in pull requests by running deterministic checks and a fresh-context verifier model on the artifacts. It helps reviewers adjudicate by summarizing results in a table, uploading reports and proof files as workflow artifacts, and exiting with appropriate codes for verification status. The action provides input controls like criteria, checks, models, and security settings to tailor verification workflows.
---


Version updated for **https://github.com/snapsynapse/harnessie-verify-action** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harnessie-verify) to find the latest changes.

## Action Summary

The harnessie-verify-action automates the verification of claims in pull requests by running deterministic checks and a fresh-context verifier model on the artifacts. It helps reviewers adjudicate by summarizing results in a table, uploading reports and proof files as workflow artifacts, and exiting with appropriate codes for verification status. The action provides input controls like criteria, checks, models, and security settings to tailor verification workflows.

## What's Changed

# Harnessie Verify 0.1.3

Pins the tested default to Harnessie 1.1.0.

The `harnessie verify` CLI contract is unchanged between 1.0.0 and 1.1.0, so the Action's public inputs, outputs, and fail-closed verdict contract remain VERIFIED / FAILED / CANNOT_VERIFY with exit codes 0 / 1 / 2.

The exact release commit passed all four CI jobs after the public PyPI index exposed Harnessie 1.1.0. The stable `v0` tag now resolves to this release.

