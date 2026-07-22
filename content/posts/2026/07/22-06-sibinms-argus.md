---
title: Argus PR Review
date: 2026-07-22 06:09:48 +00:00
tags:
  - sibinms
  - GitHub Actions
draft: false
repo: https://github.com/sibinms/argus
marketplace: https://github.com/marketplace/actions/argus-pr-review
version: v1.2.21
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Argus is an AI-driven code review tool that leverages multiple specialized AI reviewers to identify potential issues in a pull request. It uses an evidence-based curator to verify findings and only dismisses them if they can be substantiated with code from the diff, ensuring high recall and manageable false positives. The tool supports various LLM providers and allows for customization through Markdown-based lenses.
---


Version updated for **https://github.com/sibinms/argus** to version **v1.2.21**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-review) to find the latest changes.

## Action Summary

Argus is an AI-driven code review tool that leverages multiple specialized AI reviewers to identify potential issues in a pull request. It uses an evidence-based curator to verify findings and only dismisses them if they can be substantiated with code from the diff, ensuring high recall and manageable false positives. The tool supports various LLM providers and allows for customization through Markdown-based lenses.

## What's Changed

## What's changed

**fix: lenses never report positive findings — only flag problems**

Argus was posting "positive findings" on PRs: confirming that security controls exist, that checks are correct, or that implementations are well-designed. These are observations, not problems.

- Added explicit rule to lens base prompt: never report that something is correctly implemented; only report when something is WRONG or MISSING
- Added curator rule: drop_noise any finding that states a control is present, a check is correct, or an implementation is good — regardless of confidence
- Added curator rule: pre-existing issues (lines not in the diff as `+` lines) are out of scope and must be drop_noised
