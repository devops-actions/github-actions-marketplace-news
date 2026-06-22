---
title: Run on OnMCU
date: 2026-06-22 23:49:26 +00:00
tags:
  - onmcu
  - GitHub Actions
draft: false
repo: https://github.com/onmcu/onmcu-action
marketplace: https://github.com/marketplace/actions/run-on-onmcu
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/onmcu/onmcu-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-on-onmcu) to find the latest changes.

## What's Changed

  ## Fixes
  
  - **Action failed to load with `Unrecognized named-value: 'secrets'`.** The
    `api-key` input description contained a live `${{ secrets.ONMCU_API_KEY }}`
    expression, which the runner tried to evaluate when loading the action
    manifest. Because the `secrets` context isn't available at manifest-load
    time, validation failed before the action could run — affecting every
    workflow that referenced it. The description is now plain text and no longer
    embeds an expression.
