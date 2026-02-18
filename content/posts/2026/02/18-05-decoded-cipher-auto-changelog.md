---
title: AI Changelog (GitHub Models)
date: 2026-02-18 05:46:50 +00:00
tags:
  - decoded-cipher
  - GitHub Actions
draft: false
repo: https://github.com/decoded-cipher/auto-changelog
marketplace: https://github.com/marketplace/actions/ai-changelog-github-models
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/decoded-cipher/auto-changelog** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-github-models) to find the latest changes.

## Action Summary

The AI Changelog Generator GitHub Action automates the creation of structured, human-readable or machine-friendly changelogs from commit history using GitHub-hosted AI models. It eliminates the need for manual changelog writing, categorizes changes (e.g., Features, Fixes, Docs), and generates a Markdown file that can be incorporated into release notes or documentation. Additionally, it offers an optional PR mode to manage changelog updates through a dedicated branch and pull requests, ensuring clean workflows and avoiding direct changes to main branches.

## Release notes

# Summary

This release adds **PR mode** so you can generate changelogs on a dedicated branch and open a pull request instead of pushing directly to your default branch. It also improves how the AI groups related commits for clearer, less noisy changelogs.

---

# What's New

## PR mode for changelog generation

- **Dedicated branch:** The action can use a branch (e.g. `auto/changelog`) for all changelog commits.
- **Automatic PR:** After generating the changelog, it creates or updates a pull request to your base branch (e.g. `master`).
- **No direct pushes to main:** Changelog updates go through a PR so you can review before merging.

Use it by setting `create_pr: true` and optionally `changelog_branch` and `base_branch` in your workflow. See the README for the full example.

## Clearer grouping of related commits

- **Docs:** Guidelines for changelog generation now explicitly tell the model to group related commits (e.g. "add X", "fix X", "tweak X") into a single, richer entry.
- **Result:** Changelogs are less noisy and easier to read, with one row per logical change instead of one per commit.

---

# Changelog (this release)

| Date       | Type | Area   | Summary |
|------------|------|--------|---------|
| 2026-02-18 | feature | workflow | PR mode: generate changelog on a dedicated branch, then create or update a PR to the base branch so you never push directly to main. |
| 2026-02-18 | docs    | prompt  | Clarified guidelines so the AI groups related commits into single, user-facing entries for cleaner changelogs. |


**Full Changelog**: https://github.com/decoded-cipher/auto-changelog/compare/v1.0.0...v1.1.0
