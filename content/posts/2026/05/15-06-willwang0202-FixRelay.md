---
title: FixRelay
date: 2026-05-15 06:31:04 +00:00
tags:
  - willwang0202
  - GitHub Actions
draft: false
repo: https://github.com/willwang0202/FixRelay
marketplace: https://github.com/marketplace/actions/fixrelay
version: v0.2.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/willwang0202/FixRelay** to version **v0.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fixrelay) to find the latest changes.

## Action Summary

FixRelay is a GitHub Action that transforms security scanner outputs (e.g., SARIF files) into actionable PR merge-risk summaries and AI-driven fix prompts. It automates risk scoring based on deterministic rules, generates PR-ready reports, and creates machine-readable tasks to streamline security issue resolution. This tool simplifies security workflows by integrating with CI pipelines and enabling actionable insights for developers without requiring external hosting or complex setups.

## What's Changed

## What's changed

Security hardening and robustness fixes from a full code review + design-gap analysis. No behavior changes for normal usage.

### HIGH fixes

- **Pagination loop bounded**: `findExistingComment` now stops after 50 pages (5,000 comments) instead of looping forever if the GitHub API unexpectedly returns full pages indefinitely.
- **`--diff` git errors are wrapped**: invalid diff ranges (e.g. fetch not run before CI) now fail with a FixRelay-prefixed message instead of a raw git error.
- **`GITHUB_EVENT_PATH` parse guard**: a corrupt or partially-written event file no longer crashes the action before artifacts are written.

### MEDIUM fixes

- **Path traversal in SARIF URIs closed**: `normalizePath` now calls `path.posix.normalize()` to collapse `..` sequences, so a crafted SARIF URI like `b/src/../../../etc/passwd` cannot inject traversal strings into the risk scorer's changed-file set.
- **`fail-on` validated eagerly**: an invalid `fail-on` value (e.g. `"severe"`) now throws immediately at `runFixRelay` entry before any artifacts are written, rather than crashing mid-way.
- **`action.yml` doc fix**: `llm-review-artifact` description now correctly states the artifact is written on both `ok` and `failed` LLM status, not only on success.
- **LLM prompt cleanup**: removed a dead ternary branch and leading blank line in the user message builder.

### Design gap analysis

15/15 README and codex promises verified as correctly implemented. No missing features found.

## Upgrade

Pin to `v0.2.4` or use `@v0` to receive this fix automatically.
