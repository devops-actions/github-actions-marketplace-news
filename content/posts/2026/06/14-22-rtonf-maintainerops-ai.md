---
title: MaintainerOps AI
date: 2026-06-14 22:14:28 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

# v0.1.6 Action Runtime Hardening

Date: 2026-06-15

## Summary

This GitHub Action release publishes the post-application hardening work that landed after `v0.1.5`.

The npm package remains `maintainerops-ai@0.1.4`; this release is for the GitHub Action and Marketplace channel.

## Changes

- Run the GitHub Action from the prebuilt `dist-action/index.js` bundle.
- Remove response bodies from GitHub API exception messages.
- Cap pull request changed-file pagination at 3,000 files to avoid unbounded API calls.
- Add runtime validation for model assessment packets:
  - `riskLevel`
  - `recommendedAction`
  - confidence range
  - string array fields
  - evidence entries
- Add unit tests for GitHub API error redaction, pagination cap behavior, and assessment enum validation.
- Sanitize public Codex Security reports so local Windows user paths are not exposed.
- Refresh README and Marketplace examples to point at `v0.1.6`.

## Verification

- `npm run verify`
- GitHub Actions manual run: `https://github.com/rtonf/maintainerops-ai/actions/runs/27464546983`
- Local path search against `docs/codex-security/`: no local user path matches.

## Publication Note

After creating the GitHub Release, publish `v0.1.6` to GitHub Marketplace from the Release UI so the Marketplace listing moves from `v0.1.5` to `v0.1.6`.

