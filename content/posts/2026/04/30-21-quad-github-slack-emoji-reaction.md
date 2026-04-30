---
title: github-slack-emoji-reaction
date: 2026-04-30 21:53:49 +00:00
tags:
  - quad
  - GitHub Actions
draft: false
repo: https://github.com/quad/github-slack-emoji-reaction
marketplace: https://github.com/marketplace/actions/github-slack-emoji-reaction
version: v2.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/quad/github-slack-emoji-reaction** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-slack-emoji-reaction) to find the latest changes.

## Action Summary

The `github-slack-emoji-reaction` GitHub Action automates the process of reacting to Slack messages that link to pull requests by adding emoji that reflect the PR's current state (e.g., approved, merged, or closed). It helps streamline communication and status tracking by providing visual indicators in Slack for pull request updates. Key capabilities include customizable emoji reactions, compatibility with GitHub and Slack integration, and handling various PR events such as approvals, comments, merges, and closures.

## What's Changed

- Don't react `commented` when the only review is from the PR author.
- Fix GHA cache v2 success detection (proto3 JSON omits `ok: true`, which silently broke saves and restores).
