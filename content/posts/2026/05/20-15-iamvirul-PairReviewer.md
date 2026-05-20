---
title: PairReviewer
date: 2026-05-20 15:09:48 +00:00
tags:
  - iamvirul
  - GitHub Actions
draft: false
repo: https://github.com/iamvirul/PairReviewer
marketplace: https://github.com/marketplace/actions/pairreviewer
version: v1.3.2
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/iamvirul/PairReviewer** to version **v1.3.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pairreviewer) to find the latest changes.

## Action Summary

**PairReviewer** is an AI-powered GitHub Action that automates code reviews on pull requests by leveraging GitHub Models (e.g., GPT-4.1). It reviews code diffs, provides inline comments, and determines whether to approve or request changes on a PR, with the ability to iterate automatically as updates are made. This action streamlines the code review process, ensures consistency in feedback, and integrates seamlessly into existing branch protection workflows.

## What's Changed

## What changed
- Added an approval gate to wait for other workflow runs on the same commit before posting APPROVE.
- If timeout is reached, PairReviewer posts COMMENT instead of APPROVE and explains approval was deferred.
- Added new inputs:
  - wait-for-other-workflows-before-approve (default: true)
  - wait-for-other-workflows-timeout-seconds (default: 300)
  - wait-for-other-workflows-poll-seconds (default: 10)

## Why
Some tools (for example CodeRabbit) may post comments later in the pipeline. This prevents early AI approvals before the rest of CI/review automation has finished.
