---
title: Remyx Outrider
date: 2026-07-17 14:52:16 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.33
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action, Outrider, automates the process of validating and comparing new methods against an organization's existing codebase. It uses Anthropic Opus or z.ai GLM-5.2 as model backends to evaluate arXiv methods (or design-doc leads) against real call sites, providing a self-review and issue routing feature. It supports branch-only mode and avoids duplicate work by not re-recommending papers once they have been referenced. The action is designed to streamline the integration of new models into production environments while ensuring compliance with code review metrics.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.33**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action, Outrider, automates the process of validating and comparing new methods against an organization's existing codebase. It uses Anthropic Opus or z.ai GLM-5.2 as model backends to evaluate arXiv methods (or design-doc leads) against real call sites, providing a self-review and issue routing feature. It supports branch-only mode and avoids duplicate work by not re-recommending papers once they have been referenced. The action is designed to streamline the integration of new models into production environments while ensuring compliance with code review metrics.

## What's Changed

## Fixed

**Refinement chain short-circuited when fidelity audit couldn't run** ([PR #98](https://github.com/remyxai/outrider/pull/98)) — the chain (fidelity → convention → test) treated \`fidelity_skipped_*\` statuses the same as actual audit failures, cancelling convention (PR-body rewrite) and test (pytest gate) even when the PR itself was unchanged.

Root cause: a single "starts with \`fidelity_audited\`" gate at chain entry. Skipping the audit because the paper's reference URL doesn't back-reference the arxiv (\`fidelity_skipped_reference_mismatch\`) leaves the PR fine, but convention + test never fired.

New taxonomy: chain continues on any \`fidelity_skipped_*\` **except** \`fidelity_skipped_no_pr\` (nothing to work on). Short-circuits stay on \`fidelity_failed_*\` (audit crashed → conservative, investigation warranted).

## Compatibility

Existing \`fidelity_audited*\` semantics unchanged. Only behavioral change is the three \`fidelity_skipped_*\` (no_reference, not_bot, reference_mismatch) now run convention + test where they previously short-circuited. No API-input or workflow-YAML changes.

The \`remyxai/outrider@v1\` action tag now points to v1.7.33.
