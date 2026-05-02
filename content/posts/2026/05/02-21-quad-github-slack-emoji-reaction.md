---
title: github-slack-emoji-reaction
date: 2026-05-02 21:31:50 +00:00
tags:
  - quad
  - GitHub Actions
draft: false
repo: https://github.com/quad/github-slack-emoji-reaction
marketplace: https://github.com/marketplace/actions/github-slack-emoji-reaction
version: v2.0.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/quad/github-slack-emoji-reaction** to version **v2.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-slack-emoji-reaction) to find the latest changes.

## Action Summary

The `github-slack-emoji-reaction` GitHub Action automates adding emoji reactions to Slack messages that link to pull requests, reflecting the current state of the PR (e.g., approved → ✅, merged → 🚀). It streamlines communication by providing visual feedback on PR status directly within Slack channels, reducing the need for manual updates. Key capabilities include customizable emoji reactions based on PR events and support for integration with multiple Slack channels.

## What's Changed

- Fix `thread_broadcast` false-match: when a Slack user replied to the PR-link thread with "Also send to channel", the reaction landed on the reply instead of the parent. The matcher now ignores the embedded `root` and redirects broadcast hits to `thread_ts`.
