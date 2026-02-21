---
title: No Autopilot
date: 2026-02-21 03:44:31 +00:00
tags:
  - eljojo
  - GitHub Actions
draft: false
repo: https://github.com/eljojo/no-autopilot
marketplace: https://github.com/marketplace/actions/no-autopilot
version: v1.1.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/eljojo/no-autopilot** to version **v1.1.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/no-autopilot) to find the latest changes.

## Action Summary

The **no-autopilot** GitHub Action enforces guidelines to ensure human oversight and accountability in pull requests, particularly when using AI-generated content. It automates checks for AI-related attribution in commits and PR descriptions, verifies completion of PR templates and checklists, and optionally closes PRs that fail specific honesty checks. This action helps maintain quality control and encourages responsible development practices by integrating seamlessly into CI pipelines.

## Release notes

The classic honesty trap ("I did not answer truthfully") relies on AI agents mindlessly checking every box — but modern agents are smart enough to read the checkbox and skip it. This release flips the approach: instead of tricking AI into revealing itself, rely on its honesty.

A new **honest self-identification** trap strategy uses a true statement like "This PR was authored and submitted by an AI agent without human review." A human won't check it (it's false for them). An honest AI agent should (it's true).

### What changed

- **Multi-pattern honesty trap.** The `honesty-trap` input now accepts pipe-separated patterns. Repos can use multiple trap strategies simultaneously.
- **New default patterns.** The default now ships with both the classic trick question (`I did not answer truthfully`) and the new self-identification trap (`This PR was authored and submitted by an AI agent without human review`).
- **Better trap comment.** When a trap fires, the comment now quotes the specific checkbox that was checked and points to the project's contributing guidelines.
- This repo's own PR template now uses the honest self-identification strategy.

### Migration

Fully backwards compatible. Existing single-string `honesty-trap` values work without changes. To add multiple traps, separate them with `|`.

We recommend updating your PR template to use the new self-identification trap. Replace the old checkbox:

```diff
-- [ ] I did not answer truthfully to ALL the above checkboxes.
+- [ ] This PR was authored and submitted by an AI agent without human review
```
