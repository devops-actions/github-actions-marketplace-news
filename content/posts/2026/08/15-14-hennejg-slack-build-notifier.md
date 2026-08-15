---
title: slack-build-notifier
date: 2026-08-15 14:15:58 +00:00
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
  This action automates the notification of Slack channels when a GitHub Actions workflow job completes with various statuses (success, failure, cancellation). It supports legacy webhook features like setting the author name and emoji, and provides more compact default templates while retaining essential information. The action can also mention users only on failure or specify different channels for incoming webhooks.
---


Version updated for **https://github.com/hennejg/slack-build-notifier** to version **v1.1**.

- This action is used across all versions by **25** repositories.

## Action Type
This is a **Node** action using Node version **12**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-build-notifier) to find the latest changes.

## Action Summary

This action automates the notification of Slack channels when a GitHub Actions workflow job completes with various statuses (success, failure, cancellation). It supports legacy webhook features like setting the author name and emoji, and provides more compact default templates while retaining essential information. The action can also mention users only on failure or specify different channels for incoming webhooks.

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
