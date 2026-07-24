---
title: Codex Review Gate
date: 2026-07-24 06:24:59 +00:00
tags:
  - JoeyTeng
  - GitHub Actions
draft: false
repo: https://github.com/JoeyTeng/codex-review-gate-action
marketplace: https://github.com/marketplace/actions/codex-review-gate
version: v1.3.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The Codex Review Gate GitHub Action ensures that a PR head has clean Codex review output before passing as a required status check, using Codex's generative AI capabilities to review pull requests. It maintains a thin workflow in `.github/workflows/codex-review-gate.yml` and coordinates with GitHub comments, reviews, reactions, and commit statuses for reliable checks.
---


Version updated for **https://github.com/JoeyTeng/codex-review-gate-action** to version **v1.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-review-gate) to find the latest changes.

## Action Summary

The Codex Review Gate GitHub Action ensures that a PR head has clean Codex review output before passing as a required status check, using Codex's generative AI capabilities to review pull requests. It maintains a thin workflow in `.github/workflows/codex-review-gate.yml` and coordinates with GitHub comments, reviews, reactions, and commit statuses for reliable checks.

## What's Changed

## What's changed

- Reconcile official `COMMENTED` review wrappers with their inline findings instead of treating the wrapper as a second standalone finding.
- Keep incomplete REST/GraphQL snapshots fail-closed until bounded reloads produce a complete, mutually reconciled snapshot.
- Preserve unresolved inline findings as failures while allowing resolved inline findings to stop blocking a later current-head clean result.
- Add regressions for partial snapshots, orphaned parent/child evidence, unknown wrapper grammar, and transient thread retrieval errors.

## Compatibility

- Existing action inputs remain compatible.
- `completion-signal-buffer-seconds` and `failed-findings-recovery-mode` remain accepted as deprecated legacy inputs.

All release tags (`v1.3.1`, `v1.3`, and `v1`) are signed and resolve to action commit `ef41b938a6c57a8a1adde44baaabd29eb8ee4df6`.

