---
title: Release to Social Media
date: 2026-04-04 06:09:45 +00:00
tags:
  - postboost-co
  - GitHub Actions
draft: false
repo: https://github.com/postboost-co/release-to-social
marketplace: https://github.com/marketplace/actions/release-to-social-media
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/postboost-co/release-to-social** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-to-social-media) to find the latest changes.

## Action Summary

The `release-to-social` GitHub Action automates the process of announcing GitHub Releases on multiple social media platforms. It transforms changelog content into tailored, platform-specific marketing copy using AI and schedules posts via PostBoost, ensuring timely and consistent communication. Key features include changelog parsing, semantic version-aware messaging, customizable scheduling, and support for multiple social platforms, streamlining release announcements and reducing manual effort.

## What's Changed

Automatically post your GitHub Release announcements to social media when you publish a release — no copy-pasting, no
  manual work.

  Claude AI reads your release notes and writes platform-optimized copy for each connected account. PostBoost publishes
  everything in one shot.

  ## What it does

  - Parses your release notes (supports Keep a Changelog format)
  - Detects release type: major versions and milestones get celebratory posts, patch releases get brief notes
  - Generates different content per platform respecting each character limit (Twitter 280, LinkedIn 3,000, Instagram
  2,200, etc.)
  - Posts to all connected PostBoost accounts simultaneously — Twitter, LinkedIn, Instagram, Facebook, Mastodon, TikTok,
  YouTube, Pinterest

  ## Setup

  Add three secrets to your repository:

  - `POSTBOOST_API_TOKEN` — from PostBoost dashboard → Settings → Access Tokens
  - `POSTBOOST_WORKSPACE_UUID` — from your PostBoost dashboard URL
  - `CLAUDE_CODE_OAUTH_TOKEN` — run `claude setup-token` (or use `ANTHROPIC_API_KEY` from console.anthropic.com)

  ```yaml
  on:
    release:
      types: [published]

  jobs:
    announce:
      runs-on: ubuntu-latest
      steps:
        - uses: postboost-co/release-to-social@v1
          with:
            postboost_api_token: ${{ secrets.POSTBOOST_API_TOKEN }}
            workspace_uuid: ${{ secrets.POSTBOOST_WORKSPACE_UUID }}
            claude_code_oauth_token: ${{ secrets.CLAUDE_CODE_OAUTH_TOKEN }}

  Use dry_run: 'true' to preview generated content in the job summary before going live.
