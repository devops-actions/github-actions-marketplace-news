---
title: PR Explainer AI
date: 2026-07-18 22:27:19 +00:00
tags:
  - rafaeltorresng
  - GitHub Actions
draft: false
repo: https://github.com/rafaeltorresng/pr-explainer-action
marketplace: https://github.com/marketplace/actions/pr-explainer-ai
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PR Explainer AI is a GitHub Action that automates the creation of interactive HTML artifacts for pull requests. It helps reviewers understand pull requests by providing context, technical intuition, visual diagrams, code walkthroughs, and quizzes, making the knowledge durable and easy to revisit. The action supports multiple languages and limits large changes to avoid model issues.
---


Version updated for **https://github.com/rafaeltorresng/pr-explainer-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-explainer-ai) to find the latest changes.

## Action Summary

PR Explainer AI is a GitHub Action that automates the creation of interactive HTML artifacts for pull requests. It helps reviewers understand pull requests by providing context, technical intuition, visual diagrams, code walkthroughs, and quizzes, making the knowledge durable and easy to revisit. The action supports multiple languages and limits large changes to avoid model issues.

## What's Changed

## What's new
- The generated prompt now includes the Pull Request description (when the author wrote one), alongside the existing PR title, number, and diff. The model can use stated intent as context while still deferring to the diff as source of truth when the two disagree.

## Details
- Extracted `pull_request.body` from the GitHub event payload and threaded it into the user prompt as a clearly labeled "Pull Request description" section (English and pt-BR), placed after the title/number and before the diff block.
- Section is fully omitted when the PR has no description or it is empty/whitespace-only — behavior for PRs without a description is unchanged.
- No length cap applied to the description text (diff remains capped at 40,000 characters).
- Updated both prompt files' "source of truth" instruction so the model treats the description as author intent, not verified fact, and favors the diff on conflicts.
- Added unit test coverage for the new prompt section (present/absent/whitespace-only, both languages) and verified end-to-end with a real event payload and mocked model response.

**Full Changelog**: https://github.com/rafaeltorresng/pr-explainer-action/compare/v1.0.6...v1.1.0
