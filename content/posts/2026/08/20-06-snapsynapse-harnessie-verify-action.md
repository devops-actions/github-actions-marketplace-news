---
title: Harnessie Verify
date: 2026-08-20 06:21:39 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/harnessie-verify-action
marketplace: https://github.com/marketplace/actions/harnessie-verify
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification of claims made in pull requests by executing deterministic checks and running a fresh-context verifier model. It prevents untrusted diffs from leaving machines under control and ensures that only verified claims are accepted before merging a pull request. The action is powered by harnessie verify, with an option to use OpenAI-compatible endpoints for verification, enhancing security and flexibility.
---


Version updated for **https://github.com/snapsynapse/harnessie-verify-action** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harnessie-verify) to find the latest changes.

## Action Summary

This GitHub Action automates the verification of claims made in pull requests by executing deterministic checks and running a fresh-context verifier model. It prevents untrusted diffs from leaving machines under control and ensures that only verified claims are accepted before merging a pull request. The action is powered by harnessie verify, with an option to use OpenAI-compatible endpoints for verification, enhancing security and flexibility.

## What's Changed

Pin the tested default to Harnessie 1.0.0. The `harnessie verify` CLI contract is unchanged between 0.8.0 and 1.0.0, so the action's public inputs, outputs, and fail-closed verdict contract (VERIFIED / FAILED / CANNOT_VERIFY; 0/1/2) are preserved. Verified against a fresh-venv PyPI 1.0.0 install with the fixture mock provider mapping a failing check to exit 1.

Stable-major tag `v0` now resolves to this release commit.
