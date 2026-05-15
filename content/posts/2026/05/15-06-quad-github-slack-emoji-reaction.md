---
title: github-slack-emoji-reaction
date: 2026-05-15 06:31:56 +00:00
tags:
  - quad
  - GitHub Actions
draft: false
repo: https://github.com/quad/github-slack-emoji-reaction
marketplace: https://github.com/marketplace/actions/github-slack-emoji-reaction
version: v2.0.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/quad/github-slack-emoji-reaction** to version **v2.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-slack-emoji-reaction) to find the latest changes.

## Action Summary

This GitHub Action automatically adds emoji reactions to Slack messages that link to pull requests, reflecting the PR's state (e.g., approved, merged, or changes requested). It streamlines communication by visually updating stakeholders on PR statuses directly in Slack, reducing the need for manual updates. Key capabilities include customizable emoji reactions based on predefined PR events and integration with Slack channels for real-time notifications.

## What's Changed

- Fix `thread_broadcast` reactions when the broadcast itself carries the PR link. In v2.0.4 broadcast hits were always redirected to the thread parent; that was wrong for "Also send to channel" replies where the broadcast is the message users see in-channel. The matcher now reacts on the actual matching message.
