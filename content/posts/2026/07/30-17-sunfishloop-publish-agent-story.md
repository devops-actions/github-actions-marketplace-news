---
title: Publish Agent Story
date: 2026-07-30 17:23:08 +00:00
tags:
  - sunfishloop
  - GitHub Actions
draft: false
repo: https://github.com/sunfishloop/publish-agent-story
marketplace: https://github.com/marketplace/actions/publish-agent-story
version: v1.2.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action extracts useful moments from an Agent run log or manifest, redacts sensitive information, publishes the generated Story to SunfishLoop, and adds its URL to the GitHub Actions job summary. It automates the process of sharing agent runs as shareable Stories on SunfishLoop, facilitating easy access and collaboration.
---


Version updated for **https://github.com/sunfishloop/publish-agent-story** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-agent-story) to find the latest changes.

## Action Summary

This GitHub Action extracts useful moments from an Agent run log or manifest, redacts sensitive information, publishes the generated Story to SunfishLoop, and adds its URL to the GitHub Actions job summary. It automates the process of sharing agent runs as shareable Stories on SunfishLoop, facilitating easy access and collaboration.

## What's Changed

## What changed

- Version generated run identities from both the file path and run content.
- Keep retries idempotent while allowing a changed run file to publish a new Story.
- Add regression coverage for content identity and custom title overrides.

This fixes one-click starter workflows reusing an older Story after the run log changed.
