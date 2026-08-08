---
title: slack-build-notifier
date: 2026-08-08 14:45:22 +00:00
tags:
  - hennejg
  - GitHub Actions
draft: false
repo: https://github.com/hennejg/slack-build-notifier
marketplace: https://github.com/marketplace/actions/slack-build-notifier
version: v1.1
dependentsNumber: "25"
actionType: Node
nodeVersion: 12
actionSummary: |
  This GitHub Action sends notifications to a Slack channel when a build status changes. It supports legacy webhook features and provides more compact templates while retaining essential information. Future enhancements include using Slack blocks for improved presentation, test failure summaries, and selective mentions based on job status change. The action is configured through parameters such as status, text, author name, mention options, and payload formats.
---


Version updated for **https://github.com/hennejg/slack-build-notifier** to version **v1.1**.

- This action is used across all versions by **25** repositories.

## Action Type
This is a **Node** action using Node version **12**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-build-notifier) to find the latest changes.

## Action Summary

This GitHub Action sends notifications to a Slack channel when a build status changes. It supports legacy webhook features and provides more compact templates while retaining essential information. Future enhancements include using Slack blocks for improved presentation, test failure summaries, and selective mentions based on job status change. The action is configured through parameters such as status, text, author name, mention options, and payload formats.

## What's Changed

- Remove erroneously committed artifacts (83e0fda)
- Build release (10e0389)
- Fix channel field (0682480)
- Fix typo, Icon (ff6f799)
- Merge pull request #1 from hennejg/just_playing_around (6769f45)
- Update Branding (22d888f)
- Hide more fields by default (7d10d8f)
- Simplify template (93ed17e)
- Can a default be set using action.yml? (07bf727)
- There seems to be no way of accessing the job status (5cedcab)
