---
title: SwarmFlow Security Gate
date: 2026-06-04 07:09:00 +00:00
tags:
  - swarmflow-security
  - GitHub Actions
draft: false
repo: https://github.com/swarmflow-security/scan-action
marketplace: https://github.com/marketplace/actions/swarmflow-security-gate
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/swarmflow-security/scan-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/swarmflow-security-gate) to find the latest changes.

## What's Changed

SwarmFlow Security Gate v1 — fail your CI build when SwarmFlow finds
code-security issues at or above a severity threshold.

  - uses: swarmflow-security/scan-action@v1
    with:
      api-key: ${{ secrets.SWARMFLOW_API_KEY }}
      threshold: high
