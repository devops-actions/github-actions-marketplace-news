---
title: pi GitHub Action
date: 2026-05-20 07:00:34 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.17.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.17.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## Action Summary

The **Pi Coding Agent Action** integrates the Pi coding agent with CI/CD workflows on platforms using GitHub-compatible APIs, such as GitHub, Codeberg, and Forgejo. It automates tasks like issue analysis, pull request reviews, and code fixes by responding to specific trigger phrases in comments (e.g., `/pi`). The action enhances user experience with features like automated code reviews, background execution in pipelines, and intuitive logging, simplifying the use of Pi agent in development workflows.

## What's Changed

## [2.17.0] - 2026-05-19

### Added

- add create_pull_request_review tool for inline diff-anchored review comments (#189)
- ensure get_pr_diff does not overflow context window (#195)

### Changed

- **deps**: update dependencies (#196)
- **deps**: update dependencies (#197)

[2.17.0]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.16.1...v2.17.0

