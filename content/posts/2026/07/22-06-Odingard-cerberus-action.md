---
title: Cerberus AI-Agent Runtime Check
date: 2026-07-22 06:27:16 +00:00
tags:
  - Odingard
  - GitHub Actions
draft: false
repo: https://github.com/Odingard/cerberus-action
marketplace: https://github.com/marketplace/actions/cerberus-ai-agent-runtime-check
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks Cerberus's allow/block behavior by running two bundled, maintained fixtures through the Cerberus runtime security layer. It provides a PASS/FLAG/BLOCK verdict and an uploaded evidence artifact, ensuring CI runs without disruptions. The action is report-only by default but can be configured to fail if protection does not behave as expected.
---


Version updated for **https://github.com/Odingard/cerberus-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cerberus-ai-agent-runtime-check) to find the latest changes.

## Action Summary

This GitHub Action checks Cerberus's allow/block behavior by running two bundled, maintained fixtures through the Cerberus runtime security layer. It provides a PASS/FLAG/BLOCK verdict and an uploaded evidence artifact, ensuring CI runs without disruptions. The action is report-only by default but can be configured to fail if protection does not behave as expected.

## What's Changed

## v1.0.1 — positioning + hardening

A correctness and honesty pass before broad promotion. No behavior change to the check itself.

- **Reframed positioning.** This Action runs a **reproducible Cerberus allow/block self-check** against two bundled, maintained fixtures (a benign workflow that should run, a Lethal-Trifecta workflow that should be blocked). It does **not** analyze the caller's own application workflows — the README and summary now say so plainly.
- **Pinned `core-version` default to `3.1.0`** (was `latest`) for reproducible runs.
- **Default runtime is now Node 24**, and the bundled official actions were bumped to current majors (`checkout@v5`, `setup-node@v5`, `upload-artifact@v7`) — clears the Node 20 deprecation warnings. Self-test now runs warning-free.
- **README now links the public `Odingard/cerberus-core`** instead of the private core repo.
- Refreshed Marketplace banner + listing screenshots to match the new wording.

Usage is unchanged:

```yaml
- uses: Odingard/cerberus-action@v1
```

