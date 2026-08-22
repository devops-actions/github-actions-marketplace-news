---
title: REWORK Proof Check
date: 2026-08-22 22:03:07 +00:00
tags:
  - Reworkdigital-io
  - GitHub Actions
draft: false
repo: https://github.com/Reworkdigital-io/REWORK-Proof
marketplace: https://github.com/marketplace/actions/rework-proof-check
version: v1.0.0
dependentsNumber: "0"
actionSummary: |
  This GitHub Action checks who wrote each commit in a pull request, verifying their signature state and author attribution. It also identifies AI-assisted commits, without penalizing them. The action can generate a Verifiable Credential attestation of the run if configured, using OIDC tokens to prove repository and workflow information without storing any sensitive data in the repository settings.
---


Version updated for **https://github.com/Reworkdigital-io/REWORK-Proof** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rework-proof-check) to find the latest changes.

## Action Summary

This GitHub Action checks who wrote each commit in a pull request, verifying their signature state and author attribution. It also identifies AI-assisted commits, without penalizing them. The action can generate a Verifiable Credential attestation of the run if configured, using OIDC tokens to prove repository and workflow information without storing any sensitive data in the repository settings.

## What's Changed

Reports who actually wrote the commits in a pull request — signature state,
author attribution, and disclosed AI assistance — as a job summary.

## Setup

```yaml
name: Proof
on: pull_request

jobs:
  proof:
    runs-on: ubuntu-latest
    steps:
      - uses: Reworkdigital-io/REWORK-Proof@v1
