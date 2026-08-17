---
title: rung gate
date: 2026-08-17 13:49:39 +00:00
tags:
  - rung-dev
  - GitHub Actions
draft: false
repo: https://github.com/rung-dev/rung
marketplace: https://github.com/marketplace/actions/rung-gate
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `rung` GitHub Action automates the verification of code changes by grading their realism and independence. It distinguishes between "verified" claims based on the steps taken from reasoning about the code to driving real surfaces and capturing differences consistent with changes. The action supports different rung levels (0-4) and evaluation contexts (author, fresh-blind, cross-lab), providing a standardized way to track verification claims.
---


Version updated for **https://github.com/rung-dev/rung** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rung-gate) to find the latest changes.

## Action Summary

The `rung` GitHub Action automates the verification of code changes by grading their realism and independence. It distinguishes between "verified" claims based on the steps taken from reasoning about the code to driving real surfaces and capturing differences consistent with changes. The action supports different rung levels (0-4) and evaluation contexts (author, fresh-blind, cross-lab), providing a standardized way to track verification claims.

## What's Changed

Maintenance release. No functional changes to the gate, run wrapper, schema, or policy; the version bump carries a pinned build to PyPI and GHCR.

Published as:
- pip install rung-ai==0.1.2
- uses: rung-dev/rung@v0.1.2
- docker run --rm ghcr.io/rung-dev/rung:0.1.2 version
