---
title: PR BUILD
date: 2026-06-03 06:57:17 +00:00
tags:
  - exo-actions
  - GitHub Actions
draft: false
repo: https://github.com/exo-actions/pr-action
marketplace: https://github.com/marketplace/actions/pr-build
version: 1.0.15
dependentsNumber: "67"
actionType: Composite
---


Version updated for **https://github.com/exo-actions/pr-action** to version **1.0.15**.

- This action is used across all versions by **67** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-build) to find the latest changes.

## What's Changed

Fix show-progress boolean evaluation

Use == 'true' comparison so the string 'false' evaluates to a proper
boolean false instead of being truthy in actions/checkout.
