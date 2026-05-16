---
title: ReviewSentry
date: 2026-05-16 13:57:37 +00:00
tags:
  - Spyced-Concepts
  - GitHub Actions
draft: false
repo: https://github.com/Spyced-Concepts/ReviewSentry
marketplace: https://github.com/marketplace/actions/reviewsentry
version: v0.3.3-beta
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Spyced-Concepts/ReviewSentry** to version **v0.3.3-beta**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewsentry) to find the latest changes.

## Action Summary

ReviewSentry is a GitHub Action designed to automate security-focused code reviews for pull requests by scanning for sensitive data disclosures, such as credentials or personal identifiers, before other checks. It supports multiple AI providers, including GitHub Models (free with a GitHub account), Anthropic, OpenAI, and others, allowing users the flexibility to use their preferred AI service or existing API keys. The action is open-source, requires no additional dashboards or accounts, and enables custom scan rules, offering a streamlined and highly customizable approach to secure code review.

## What's Changed

## What's new in v0.3.3-beta

### Added
- **`fail_on` input** — set to `request_changes` to exit non-zero when the AI verdict is REQUEST CHANGES, enabling merge blocking via required status checks. Default `never`.
- **`verdict` output** — exposes the AI verdict as an action output for downstream workflow steps.
- **`show_passing_criteria` input** — set to `false` to show only criteria with findings, keeping reviews concise on large PRs. Default `true`.
- **`review_drafts` input** — set to `false` to skip review on draft PRs. Default `true` (current behaviour unchanged).
- **`system_context` input** — optional project-specific context appended to the AI system prompt.
- **Extensible criteria configuration** via `.github/reviewsentry.yml` — disable optional criteria, add custom criteria, and (with explicit acknowledgement) disable core criteria per-repo.
- **Advisory verdict format** — verdict line includes emoji and AI Recommendation: prefix; always the absolute last line of the review.
- **Colour indicators** — per finding severity and per criterion section header.
- **Self-review CI** — ReviewSentry now reviews its own pull requests via GitHub Models at zero external cost.
- **BDD test suite** — Gherkin feature files and pytest-bdd step definitions; 19 scenarios pass locally.
- **KNOWN_ISSUES.md** — documents four user-facing limitations with workarounds.
- **Recommended workflow** in README — six-step guide from draft PR to merge.

### Fixed
- `gh pr diff` and `gh pr comment` missing `--repo` flag.
- False-positive model name validation in reviews.
- Prompt injection hardening — `pr_title` and `pr_body` passed via environment variables only.
- Verdict extraction robust against token-limit truncation — extraction failure now emits a warning and exits 0.

### Changed
- Review footer updated to make advisory nature explicit.
- `docs/uat/` removed — coverage replaced by BDD feature files in `features/`.

---

See [CHANGELOG.md](CHANGELOG.md) for full details. Pin to this release SHA for cryptographic immutability — see [README.md](README.md) for SHA pinning instructions.
