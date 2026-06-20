---
title: muster conformance
date: 2026-06-20 22:17:38 +00:00
tags:
  - garrison-hq
  - GitHub Actions
draft: false
repo: https://github.com/garrison-hq/muster-action
marketplace: https://github.com/marketplace/actions/muster-conformance
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/garrison-hq/muster-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muster-conformance) to find the latest changes.

## What's Changed

First release of the muster GitHub Action.

A composite action that runs `muster` agent-file conformance checks in CI: `setup-node` + `npx @garrison-hq/muster <command> <args>`, mapping muster's 0/1/2 exit contract to the job outcome and to `exit-code`/`result` outputs, with inline failure annotations, an optional `health-url` readiness wait, and skip-safe behavior when no A2A endpoint is set.

Usage:
```yaml
- uses: garrison-hq/muster-action@v1
  with:
    command: check
    args: souls/my-agent/Soul.md
```

See the README for the full input/output surface.
