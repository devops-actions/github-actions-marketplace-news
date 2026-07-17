---
title: Setup Upwarden
date: 2026-07-17 22:23:49 +00:00
tags:
  - upwarden-io
  - GitHub Actions
draft: false
repo: https://github.com/upwarden-io/setup-upwarden
marketplace: https://github.com/marketplace/actions/setup-upwarden
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The setup-upwarden action provides a simple and secure way to authenticate and attribute package manager dependencies in CI pipelines. It uses the user's OIDC identity to mint a short-lived token, ensuring that each dependency fetch is authenticated and attributed, and can be policy-enforced. The action is highly configurable with options for different ecosystems (npm, pip, maven) and supports both GitHub and non-GitHub environments.
---


Version updated for **https://github.com/upwarden-io/setup-upwarden** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-upwarden) to find the latest changes.

## Action Summary

The setup-upwarden action provides a simple and secure way to authenticate and attribute package manager dependencies in CI pipelines. It uses the user's OIDC identity to mint a short-lived token, ensuring that each dependency fetch is authenticated and attributed, and can be policy-enforced. The action is highly configurable with options for different ecosystems (npm, pip, maven) and supports both GitHub and non-GitHub environments.

## What's Changed

Patch release — no behavior change.

- **Branding:** Marketplace icon updated to shield / green.
- **Docs:** corrected README (accurate two-mode auth model; keyless-primary), and the provenance section now states only what is true (immutable release + tag protection) with the OCI attestation flagged as coming.
- **action.yml:** keyless (Mode C) comments corrected — keyless is live + primary in prod.

`uses: upwarden-io/setup-upwarden@v1` (moving) or `@v1.0.1` (immutable).
