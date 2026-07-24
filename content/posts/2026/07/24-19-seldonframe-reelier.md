---
title: Reelier replay
date: 2026-07-24 19:02:17 +00:00
tags:
  - seldonframe
  - GitHub Actions
draft: false
repo: https://github.com/seldonframe/reelier
marketplace: https://github.com/marketplace/actions/reelier-replay
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Reelier automates the verification of AI agent tool-call workflows against new dependencies, ensuring consistency and reliability in software development processes. By replaying recorded runs at zero LLM cost and diffing them, Reelier helps identify any drift between the original run and the updated environment, providing clear receipts for audits and approvals before merging changes.
---


Version updated for **https://github.com/seldonframe/reelier** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reelier-replay) to find the latest changes.

## Action Summary

Reelier automates the verification of AI agent tool-call workflows against new dependencies, ensuring consistency and reliability in software development processes. By replaying recorded runs at zero LLM cost and diffing them, Reelier helps identify any drift between the original run and the updated environment, providing clear receipts for audits and approvals before merging changes.

## What's Changed

Adds a Dependabot/Renovate bump-safety check: replay your recorded agent tool-call skills live against a bumped dependency at 0 LLM tokens, and fail the PR check on the exact step that drifted.

- New `wrap` input to front your own MCP server / tool process (the case that exercises a bumped SDK your tool code imports).
- Copy-paste recipe: `.github/workflows/reelier-bump-check.yml`.
- Honest scope: at `max-level 0` the replay never calls an LLM, so it verifies dependency / MCP-tool-call behavior, not model upgrades.

Also works unscoped from bump PRs, as a scheduled drift check or a plain "replay this skill on every PR" gate. See the README.
