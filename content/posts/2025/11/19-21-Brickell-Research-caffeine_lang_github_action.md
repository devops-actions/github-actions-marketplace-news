---
title: Caffeine Language Action
date: 2025-11-19 21:02:07 +00:00
tags:
  - Brickell-Research
  - GitHub Actions
draft: false
repo: https://github.com/Brickell-Research/caffeine_lang_github_action
marketplace: https://github.com/marketplace/actions/caffeine-language-action
version: v0.1.2
dependentsNumber: "?"
---


Version updated for **https://github.com/Brickell-Research/caffeine_lang_github_action** to version **v0.1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/caffeine-language-action) to find the latest changes.

## Release notes

 - Replaced Gleam-based workaround with pre-built binaries from GitHub releases
    - Removed Erlang, rebar3, and Gleam dependencies from Docker image
    - Now downloads the official caffeine binary directly from releases
    - Significantly smaller image size and faster build times
    - Deleted main.gleam CLI wrapper (no longer needed)
