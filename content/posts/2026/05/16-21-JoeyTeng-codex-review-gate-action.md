---
title: Codex Review Gate
date: 2026-05-16 21:27:26 +00:00
tags:
  - JoeyTeng
  - GitHub Actions
draft: false
repo: https://github.com/JoeyTeng/codex-review-gate-action
marketplace: https://github.com/marketplace/actions/codex-review-gate
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JoeyTeng/codex-review-gate-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-review-gate) to find the latest changes.

## Action Summary

The `codex-review-gate` GitHub Action automates the integration of Codex generative AI reviews into the pull request (PR) workflow by managing the `codex/review-gate` status check. It ensures that a PR cannot be merged until all Codex-generated review findings are resolved and the code is deemed clean, providing a reliable mechanism for enforcing AI-assisted code review as a branch protection rule. Key features include controlled marker comments, automated status updates, and recovery mechanisms to maintain an efficient and consistent review process.

## What's Changed

## What's Changed

- Keep controlled `@codex review` marker comments minimal so the Codex GitHub integration can parse review requests reliably.
- Move the generative AI review disclosure from marker comments to the GitHub Actions step summary.
- Keep the gate behaviour and inputs compatible with v1.2.0.
- Preserve Apache-2.0 license metadata, Marketplace branding, support docs, and source-repository links.

## Upgrade Notes

This is a patch release for the v1 line. Existing workflows using `JoeyTeng/codex-review-gate-action@v1`, `@v1.2`, or `@v1.2.1` remain compatible.

No workflow changes are required.

## Validation

- `npm run check`
- YAML parse for `action.yml`
- Runtime file comparison against the source repository
- `git diff --check`
