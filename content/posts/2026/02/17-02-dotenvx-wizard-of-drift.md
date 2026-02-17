---
title: Wizard of Drift (Oz and Dotenvx)
date: 2026-02-17 02:56:51 +00:00
tags:
  - dotenvx
  - GitHub Actions
draft: false
repo: https://github.com/dotenvx/wizard-of-drift
marketplace: https://github.com/marketplace/actions/wizard-of-drift-oz-and-dotenvx
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dotenvx/wizard-of-drift** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wizard-of-drift-oz-and-dotenvx) to find the latest changes.

## Action Summary

This GitHub Action, "Wizard of Drift," automates the detection of `.env*` key drift in pull requests by comparing key names across environment files and posting a review comment on the PR. It helps ensure consistency in environment configuration, preventing overlooked discrepancies during code reviews. This action focuses solely on key name verification and excludes `.env.keys` files to maintain security.

## Release notes

> Checks `.env*` key drift on pull requests with Warp Agent and posts a PR review comment.

## Inputs

- `warp_api_key` (required)
- `warp_agent_profile` (optional)
- `github_token` (required)

## Usage

```yaml
name: Env Drift Review

on:
  pull_request:
    types: [opened, synchronize, reopened]

permissions:
  contents: read
  pull-requests: write

jobs:
  env-drift:
    runs-on: ubuntu-latest
    steps:
      - uses: dotenvx/wizard-of-drift@v1
        with:
          warp_api_key: ${{ secrets.WARP_API_KEY }}
          github_token: ${{ secrets.GITHUB_TOKEN }}
          warp_agent_profile: "" # optional
```

## Notes

- Runs on `pull_request` only.
- Compares key names only (not values).
- Excludes `.env.keys` (which should never be committed to code)
