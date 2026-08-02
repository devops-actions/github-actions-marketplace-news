---
title: Create Robots.txt
date: 2026-08-02 06:15:07 +00:00
tags:
  - s-thom
  - GitHub Actions
draft: false
repo: https://github.com/s-thom/create-robots-txt-action
marketplace: https://github.com/marketplace/actions/create-robots-txt
version: v3.0.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `Create Robots.txt Action` generates a robots.txt file from various sources, including existing files, cloudflare API tokens to fetch bot categories, known agents API tokens to fetch user agent categories, and allows users to specify allowed and blocked bot names. It automates the creation of a robots.txt file for web scraping and SEO purposes by appending allow rules for all unspecified user agents if requested.
---


Version updated for **https://github.com/s-thom/create-robots-txt-action** to version **v3.0.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-robots-txt) to find the latest changes.

## Action Summary

The `Create Robots.txt Action` generates a robots.txt file from various sources, including existing files, cloudflare API tokens to fetch bot categories, known agents API tokens to fetch user agent categories, and allows users to specify allowed and blocked bot names. It automates the creation of a robots.txt file for web scraping and SEO purposes by appending allow rules for all unspecified user agents if requested.

## What's Changed

> [!NOTE]
> This release was generated from [`367541cb1867c020931706dd02a9d6e45a39d499`](https://github.com/s-thom/create-robots-txt-action/commit/367541cb1867c020931706dd02a9d6e45a39d499).

### Changed

- Dark Visitors has been renamed to Known Agents
  - Previous `dark-visitors-*` inputs need to be renamed to `known-agents-*`. The same values will still work.
- Cloudflare's bot categories have changed to named constants rather than human-friendly names.
- Built action file is no longer committed to `main`.


