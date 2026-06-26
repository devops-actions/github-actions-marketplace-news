---
title: PR Anti-Spam Bot
date: 2026-06-26 22:38:48 +00:00
tags:
  - freakynit
  - GitHub Actions
draft: false
repo: https://github.com/freakynit/pras-bot
marketplace: https://github.com/marketplace/actions/pr-anti-spam-bot
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/freakynit/pras-bot** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-anti-spam-bot) to find the latest changes.

## What's Changed

First public release of PRAS Bot, a GitHub Action that scores incoming pull requests for spam and low-quality contribution signals, then labels them for maintainer review.

## What it does

- Scores each pull request from 0-100 using configurable signals
- Applies one label: `likely-spam`, `needs-review`, or `looks-good`
- Posts an optional scorecard comment explaining the signal breakdown
- Uses safe defaults and supports repo-level overrides via `.github/pras-bot.yml`
- Runs on `pull_request_target` so it can label and comment on PRs from forks
- Includes optional LLM-powered signals, disabled by default

## Basic usage

```yaml
name: PR Anti-Spam Bot

on:
  pull_request_target:
    types: [opened, synchronize]

permissions:
  pull-requests: write
  issues: write
  contents: read

jobs:
  pras-bot:
    runs-on: ubuntu-latest
    steps:
      - uses: freakynit/pras-bot@v1
```

## Notes

PRAS Bot does not close pull requests automatically. It labels and comments so maintainers can make the final decision.

For configuration options and signal details, see the README and SIGNALS.md.
