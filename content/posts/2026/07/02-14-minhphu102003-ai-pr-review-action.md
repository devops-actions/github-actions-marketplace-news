---
title: Synaptic PR Review
date: 2026-07-02 14:55:44 +00:00
tags:
  - minhphu102003
  - GitHub Actions
draft: false
repo: https://github.com/minhphu102003/ai-pr-review-action
marketplace: https://github.com/marketplace/actions/synaptic-pr-review
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/minhphu102003/ai-pr-review-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/synaptic-pr-review) to find the latest changes.

## What's Changed

## ✨ New Features

- **Repository Memory Rules** — teach the bot your team's coding conventions
  - Comment `@synaptic-ai remember: <rule>` on any PR to add a rule
  - Rules stored in `.synaptic/rules.json` and enforced during every review
  - Collaborator verification before adding rules
  - Dedicated extraction prompt for faster processing

## 🐛 Bug Fixes

- Fix `pr_number` used before defined in `main_remember()`
- Fix direct engine not outputting `REMEMBER_RULE_JSON`
- Move collaborator check before LLM extraction to avoid wasted API calls
- Add collaborator check to `process_remember_from_comment()`
- Filter `find_latest_comment_with_remember()` by bot author + review signature

## 📝 Documentation

- Add preview screenshots (PR Overview, Issue Summary, Inline Comments) to README

**Full Changelog**: https://github.com/minhphu102003/ai-pr-review-action/compare/v0.1.3...v0.2.0
