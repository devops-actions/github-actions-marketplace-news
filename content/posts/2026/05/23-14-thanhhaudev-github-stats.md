---
title: GitHub README.md Metrics
date: 2026-05-23 14:10:21 +00:00
tags:
  - thanhhaudev
  - GitHub Actions
draft: false
repo: https://github.com/thanhhaudev/github-stats
marketplace: https://github.com/marketplace/actions/github-readme-md-metrics
version: v1.5.8
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/thanhhaudev/github-stats** to version **v1.5.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-md-metrics) to find the latest changes.

## Action Summary

This GitHub Action automates the process of updating a user's profile README with dynamic coding metrics such as streaks, daily averages, and language usage. It integrates with GitHub API and optionally WakaTime to compile and display stats directly in specified sections of the README. The action simplifies tracking and showcasing coding activity, helping developers maintain an engaging and up-to-date profile.

## What's Changed


### Added
- `STRIP_EMOJI` env var to suppress emoji from the rendered README block. Values: `NONE` (default, current output), `TITLE` (strip bold-section titles), `CONTENT` (strip stat-line labels inside code fences), `ALL` (strip everywhere including the `Last updated on …` line). Progress-bar glyphs in `PROGRESS_BAR_VERSION=2` are intentionally preserved.


