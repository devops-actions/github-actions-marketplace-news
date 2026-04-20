---
title: Run pully
date: 2026-04-20 06:26:04 +00:00
tags:
  - N35N0M
  - GitHub Actions
draft: false
repo: https://github.com/N35N0M/pully
marketplace: https://github.com/marketplace/actions/run-pully
version: 3.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/N35N0M/pully** to version **3.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-pully) to find the latest changes.

## Action Summary

**Summary:**  
The "Pully" GitHub Action automates the process of keeping Slack channels updated with the status of pull requests (PRs) in high-paced development environments. It posts and continuously updates a concise, single Slack message per PR, summarizing key details like branch state, PR title, authors, reviewers, approvals, and requested changes. This action eliminates the need for manual status updates, enhances team visibility, and operates without requiring additional services, relying solely on GitHub or similar CI platforms.

## What's Changed

## [3.0.3](https://github.com/N35N0M/pully/compare/3.0.2...3.0.3) (2026-04-19)


### Bug Fixes

* **core:** Prefer pull_request_target for the user-end code as this should be safer (only main gets access to context-write) and should solve problem with certain updates not getting pully updates ([0c89ab6](https://github.com/N35N0M/pully/commit/0c89ab6a987e33ec6ff245c0f23178e06b79ad7b))

