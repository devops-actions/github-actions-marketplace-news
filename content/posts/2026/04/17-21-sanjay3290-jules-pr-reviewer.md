---
title: Jules PR Reviewer
date: 2026-04-17 21:56:29 +00:00
tags:
  - sanjay3290
  - GitHub Actions
draft: false
repo: https://github.com/sanjay3290/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/jules-pr-reviewer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sanjay3290/jules-pr-reviewer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jules-pr-reviewer) to find the latest changes.

## Action Summary

The "Jules PR Reviewer" GitHub Action leverages Google's Jules (a Gemini-powered cloud coding agent) to automatically analyze and review pull requests, posting detailed comments with severity-tagged findings. It supports any language or framework, filters false positives, and allows extensibility through custom rules. By automating PR reviews and optionally gating merges based on findings, it streamlines code quality checks and enforces best practices.

## What's Changed

Initial public release of Jules PR Reviewer — a GitHub Action that uses Google Jules to review pull requests.

## Features
- Per-PR review comments with severity tags (BLOCKING / WARN / NIT).
- Merge gating via a commit status check (`jules/review`).
- Three customization layers: inline `extra_instructions`, repo-level `rules_file`, baseline prompt.
- Defaults tuned for low noise: aggressive false-positive filter, high-confidence threshold for BLOCKING.
- Security hardening: prompt-injection defense, `pull_request_target` rejected, rules loaded from base SHA, untrusted content fenced.
- Graceful failure: action errors update the PR comment + flip status to `error` (never silent `pending`).

## Setup
See the [README](https://github.com/sanjay3290/jules-pr-reviewer#setup).

## Requirements
- A Jules API key from [jules.google.com](https://jules.google.com).
- Your repo connected to your Jules account via GitHub authorization.
