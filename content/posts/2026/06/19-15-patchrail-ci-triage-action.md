---
title: PatchRail CI Triage
date: 2026-06-19 15:07:37 +00:00
tags:
  - patchrail
  - GitHub Actions
draft: false
repo: https://github.com/patchrail/ci-triage-action
marketplace: https://github.com/marketplace/actions/patchrail-ci-triage
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/patchrail/ci-triage-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchrail-ci-triage) to find the latest changes.

## What's Changed

Composite GitHub Action that classifies a failed CI log locally and links the matching getpatchrail.com/fix remediation guide as a job annotation and step summary.

- Read-only: no PR, no comment, nothing leaves the runner.
- Wraps the `patchrail` CLI offline classifier (100+ failure signatures).
- Inputs: `log-path` / `log-text`, `redact`, `patchrail-version`, `python-version`.
- Outputs: `failure-class`, `confidence`, `guide-url`.

Usage:
```yaml
- name: PatchRail CI triage
  if: failure()
  uses: patchrail/ci-triage-action@v1
  with:
    log-path: build.log
```

The `v1` tag is maintained as a moving major tag.
