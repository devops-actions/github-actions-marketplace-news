---
title: Goal-Driven AI PR Reviewer
date: 2026-08-25 06:10:18 +00:00
tags:
  - markhuangai
  - GitHub Actions
draft: false
repo: https://github.com/markhuangai/ai-pr-reviewer
marketplace: https://github.com/marketplace/actions/goal-driven-ai-pr-reviewer
version: v1.1.5
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the review process by leveraging the Claude Agent SDK to generate AI reviews for pull requests in any repository. It ensures that each review runs in an isolated session and is based on a pristine head checkout, using read-only tools to inspect the repository's history without affecting the current state. The action allows specifying multiple prompts for different types of checks and handles sensitive information securely through environment variables or secrets.
---


Version updated for **https://github.com/markhuangai/ai-pr-reviewer** to version **v1.1.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/goal-driven-ai-pr-reviewer) to find the latest changes.

## Action Summary

This GitHub Action automates the review process by leveraging the Claude Agent SDK to generate AI reviews for pull requests in any repository. It ensures that each review runs in an isolated session and is based on a pristine head checkout, using read-only tools to inspect the repository's history without affecting the current state. The action allows specifying multiple prompts for different types of checks and handles sensitive information securely through environment variables or secrets.

## What's Changed

## What's Changed
* Improve reviewer context and evidence access by @Z-M-Huang in https://github.com/markhuangai/ai-pr-reviewer/pull/22
* Enforce 1,000-line file limit by @Z-M-Huang in https://github.com/markhuangai/ai-pr-reviewer/pull/24
* Set Claude API timeouts for review sessions by @Z-M-Huang in https://github.com/markhuangai/ai-pr-reviewer/pull/25


**Full Changelog**: https://github.com/markhuangai/ai-pr-reviewer/compare/v1.1.4...v1.1.5
