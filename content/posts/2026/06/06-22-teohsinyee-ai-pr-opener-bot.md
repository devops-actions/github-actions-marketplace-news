---
title: AI PR Opener Bot
date: 2026-06-06 22:38:39 +00:00
tags:
  - teohsinyee
  - GitHub Actions
draft: false
repo: https://github.com/teohsinyee/ai-pr-opener-bot
marketplace: https://github.com/marketplace/actions/ai-pr-opener-bot
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/teohsinyee/ai-pr-opener-bot** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-opener-bot) to find the latest changes.

## What's Changed

## AI PR Opener Bot v1.0.0

Self-hosted GitHub Action for opening pull requests with a GitHub App while keeping human review and approval separate.

### What it does
- opens a pull request from a source branch to a base branch
- supports draft pull requests
- optionally requests a reviewer
- blocks duplicate open pull requests for the same branch and base
- validates source and base branches before creating the PR

### Designed for
- developers who bring their own GitHub App
- teams that want a customizable PR creation workflow
- AI-assisted development flows where PR opening should be separated from human approval

### Inputs
- `app_id`
- `private_key`
- `branch`
- `base`
- `title`
- `body` (optional)
- `draft` (optional)
- `reviewer` (optional)

### Example behavior
- `reviewer` can be left blank
- when blank, the example workflow requests review from the user who triggered the workflow

### Notes
This action is self-hosted and customizable by design.
Users should configure their own GitHub App with:
- `Contents: Read and write`
- `Pull requests: Read and write`
- `Metadata: Read`
