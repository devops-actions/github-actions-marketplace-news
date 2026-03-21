---
title: Issue PR Labeler
date: 2026-03-21 13:30:40 +00:00
tags:
  - hoho4190
  - GitHub Actions
draft: false
repo: https://github.com/hoho4190/issue-pr-labeler
marketplace: https://github.com/marketplace/actions/issue-pr-labeler
version: v3.1.0
dependentsNumber: "175"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/hoho4190/issue-pr-labeler** to version **v3.1.0**.
- This action is used across all versions by **175** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/issue-pr-labeler) to find the latest changes.

## Action Summary

The **Issue PR Labeler** GitHub Action automates the labeling of issues and pull requests based on specified metadata such as titles, body content, actor, author, branches, changed files, commit messages, and more. It simplifies workflow management by enabling users to define custom rules in a configuration file for automatically adding or removing labels based on various conditions. This action supports `issues`, `pull_request`, and `pull_request_target` events, streamlining task categorization and organization in repositories.

## Release notes

## What's Changed

This release adds two new condition options for rule matching:

- `actor`: match the user who triggered the current issue or pull request event
- `commit-messages`, `commit-message-subjects`, and `commit-message-bodies`: match the full commit message, subject, or body of commits in a pull request

## ✨ Features

- feat(condition): add commit message properties for pull requests @hoho4190 (#415)
- feat(condition): add actor property @hoho4190 (#414)

## 🐛 Bug Fixes

- fix(workflow): stabilize release prepare workflow @hoho4190 (#416)

## 🧰 Maintenance

- fix(workflow): stabilize release prepare workflow @hoho4190 (#416)
- feat(condition): add commit message properties for pull requests @hoho4190 (#415)
- feat(condition): add actor property @hoho4190 (#414)
- docs: introduce stable and next documentation tracks @hoho4190 (#413)
- ci(workflow): add dist sync workflow @hoho4190 (#411)
- ci: upgrade issue-pr-labeler to v3 and align PR template @hoho4190 (#410)

## 📚 Documentation

- feat(condition): add commit message properties for pull requests @hoho4190 (#415)
- feat(condition): add actor property @hoho4190 (#414)
- docs: introduce stable and next documentation tracks @hoho4190 (#413)
- docs: add bilingual links to guide documents @hoho4190 (#412)

**Full Changelog**: https://github.com/hoho4190/issue-pr-labeler/compare/v3.0.0...v3.1.0

