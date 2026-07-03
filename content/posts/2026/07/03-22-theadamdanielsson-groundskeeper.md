---
title: Groundskeeper Issue Triage
date: 2026-07-03 22:06:22 +00:00
tags:
  - theadamdanielsson
  - GitHub Actions
draft: false
repo: https://github.com/theadamdanielsson/groundskeeper
marketplace: https://github.com/marketplace/actions/groundskeeper-issue-triage
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/theadamdanielsson/groundskeeper** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/groundskeeper-issue-triage) to find the latest changes.

## What's Changed

First public release.

Groundskeeper is a first responder for new GitHub issues. When someone opens one, it reads your repo, then posts a single grounded comment: a duplicate check, the repro info that's missing, a pointer to the relevant file and line, and suggested labels. If it doesn't have anything solid to say, it stays silent.

It runs as a GitHub Action in your own CI on your own Anthropic key. No hosted service, no third-party app to install.

Install:
  - uses: theadamdanielsson/groundskeeper@v1

Defaults to claude-sonnet-4-6. Requires an ANTHROPIC_API_KEY repo secret and issues: write permission. See the README for the full setup.
