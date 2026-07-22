---
title: MergeRisk
date: 2026-07-22 06:26:07 +00:00
tags:
  - One-Code-LLC
  - GitHub Actions
draft: false
repo: https://github.com/One-Code-LLC/mergerisk-action
marketplace: https://github.com/marketplace/actions/mergerisk
version: v0.1.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  MergeRisk is a GitHub Action that provides a concise pull-request merge-risk report based on both deterministic scoring and optional AI insights. It helps developers identify potential risks associated with pull requests, especially those involving critical and medium path changes, without relying solely on AI. The action can be configured to fail the build if a certain risk level is reached, making it useful for maintaining code quality and security.
---


Version updated for **https://github.com/One-Code-LLC/mergerisk-action** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergerisk) to find the latest changes.

## Action Summary

MergeRisk is a GitHub Action that provides a concise pull-request merge-risk report based on both deterministic scoring and optional AI insights. It helps developers identify potential risks associated with pull requests, especially those involving critical and medium path changes, without relying solely on AI. The action can be configured to fail the build if a certain risk level is reached, making it useful for maintaining code quality and security.

## What's Changed

MergeRisk v0.1.2 is the first stable release prepared for the GitHub Actions
Marketplace.

## Highlights

- Deterministic pull-request merge-risk scoring that works without an AI
  provider.
- Optional OpenAI, Anthropic, and OpenAI-compatible AI summaries that cannot
  lower the deterministic risk level.
- Sticky pull-request comments, configurable failure thresholds, custom risk
  profiles, and deterministic or agent-assisted test-impact review.
- A committed `dist/` bundle, release preflight checks, and public contributor,
  support, and security documentation.

## Upgrade notes

Use the stable major tag once it is created:

```yaml
- uses: One-Code-LLC/mergerisk-action@v0
```

Pin to `v0.1.2` when a specific minor release is required. See the README for
the required permissions and the security guidance for fork pull requests.

## Full changelog

https://github.com/One-Code-LLC/mergerisk-action/compare/v0.1.1...v0.1.2
