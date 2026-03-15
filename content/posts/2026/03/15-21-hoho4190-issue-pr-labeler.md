---
title: Issue PR Labeler
date: 2026-03-15 21:23:46 +00:00
tags:
  - hoho4190
  - GitHub Actions
draft: false
repo: https://github.com/hoho4190/issue-pr-labeler
marketplace: https://github.com/marketplace/actions/issue-pr-labeler
version: v3.0.0
dependentsNumber: "174"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/hoho4190/issue-pr-labeler** to version **v3.0.0**.
- This action is used across all versions by **174** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/issue-pr-labeler) to find the latest changes.

## Action Summary

The **Issue PR Labeler** GitHub Action automates the process of adding or removing labels to issues and pull requests based on customizable metadata conditions such as title, body, author, branch, or file changes. It simplifies workflow management by enabling users to define rules for labeling directly in a configuration file, ensuring consistent and efficient organization of issues and PRs. Key features include support for multiple GitHub events, flexible condition-based rules, and the ability to create or remove labels dynamically.

## Release notes

v3 introduces a more flexible rule system and expanded configuration options.

## Breaking Changes

> [!WARNING]
> The configuration format and usage have changed in v3. Please review the updated documentation and migrate your existing setup before upgrading.

## What's Changed

- Added support for rule conditions based on title, body, author, base branch, head branch, draft state, changed lines, and changed files.
- Added support for combining multiple conditions with AND/OR logic to create simple labeling rules.
- Added a dry-run mode to preview rule evaluation without applying label changes.
- Added an option to remove labels when rule evaluation fails.
- Added an option to control how missing repository labels are handled.
- Improved bot event handling with more granular configuration.

