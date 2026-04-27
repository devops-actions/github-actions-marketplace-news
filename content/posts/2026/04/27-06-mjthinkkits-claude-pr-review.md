---
title: Claude PR Review
date: 2026-04-27 06:36:53 +00:00
tags:
  - mjthinkkits
  - GitHub Actions
draft: false
repo: https://github.com/mjthinkkits/claude-pr-review
marketplace: https://github.com/marketplace/actions/claude-pr-review
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mjthinkkits/claude-pr-review** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-pr-review) to find the latest changes.

## Action Summary

The **Claude PR Review** GitHub Action automates pull request reviews by leveraging the AI capabilities of Claude Sonnet to generate structured review comments for each PR. It provides functionality such as confidence scoring, cost tracking, line-level feedback, and verdict categorization (approve, comment, or request changes), streamlining the code review process while offering insights on review quality and cost. This action eliminates manual review overhead, integrates seamlessly into workflows, and requires minimal dependencies.

## What's Changed

First public release of Claude PR Review.

## What's included
- GitHub Action (composite) — drops into any repo via `uses: mjthinkkits/claude-pr-review@v1`
- CLI (`claude_pr_review.py`) — 591 lines, zero external Python deps (pure stdlib)
- Smart confidence scoring (HIGH/MEDIUM/LOW)
- Cost tracking per review (input/output tokens + USD)
- Structured verdict (APPROVE / COMMENT / REQUEST_CHANGES)
- Test suite — 18/18 passing (pytest)
- Three real sample review outputs

## Pricing
- **Free (BYOK):** bring your own Anthropic API key, unlimited. ~$0.05/PR.
- **Pro:** hosted, $9/mo, 100 PRs included. [Join the waitlist](mailto:pr-review@thinkkits.com?subject=Pro%20waitlist).

## Full changelog
See [CHANGELOG.md](CHANGELOG.md).
