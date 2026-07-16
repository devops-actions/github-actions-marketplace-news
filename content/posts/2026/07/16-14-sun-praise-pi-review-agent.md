---
title: Pi Review Agent
date: 2026-07-16 14:44:21 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.5.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Multi-persona PR review agent using Pi and Litellm AI to automate inline reviews, cache management, and team collaboration on GitHub or Gitea platforms.**
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## Action Summary

**Multi-persona PR review agent using Pi and Litellm AI to automate inline reviews, cache management, and team collaboration on GitHub or Gitea platforms.**

## What's Changed

## Highlights

- **Two-layer verifier** suppresses hallucinated findings — rule-based line/file checks plus LLM re-confirmation. Demoted items appear in a collapsible section.
- **Regex grep tool** — the `walkGrep` matcher now accepts regex patterns by default.
- **Cross-model fallback** — configure a comma-separated fallback model list (`PI_REVIEW_FALLBACK_MODELS`) so the agent retries on another model when the primary fails.

## What's Changed

### Added
- Two-layer verifier to suppress hallucinated findings (#21)
- Regex support in grep tool
- Cross-model fallback support (#29)

### Fixed
- `parseDiffPath` handles file paths containing spaces (#25)
- `filterDiff` truncates at section boundaries and excludes build artifacts by default (#28)
- `walkGrep` glob matching normalizes path separators for Windows compatibility

**Full Changelog**: https://github.com/sun-praise/pi-review-agent/compare/v1.4.0...v1.5.0

