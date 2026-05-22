---
title: GitHub README.md Metrics
date: 2026-05-22 06:30:21 +00:00
tags:
  - thanhhaudev
  - GitHub Actions
draft: false
repo: https://github.com/thanhhaudev/github-stats
marketplace: https://github.com/marketplace/actions/github-readme-md-metrics
version: v1.5.7
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/thanhhaudev/github-stats** to version **v1.5.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-md-metrics) to find the latest changes.

## Action Summary

This GitHub Action automates the process of updating a user's profile README with customizable coding metrics, such as coding streaks, commit patterns, and language usage, derived from GitHub and optional WakaTime data. It solves the problem of manually tracking and displaying these stats by dynamically injecting them into a designated section of the README on a scheduled or on-demand basis. Key capabilities include support for various metrics, integration with WakaTime, and flexible configuration for tailored insights.

## What's Changed


### Fixed
- Version the cached WakaTime snapshot independently of the repo-commit cache, so a commit-cache schema upgrade or an `ONLY_MAIN_BRANCH` toggle no longer discards a still-valid WakaTime snapshot.
- Keep freshly fetched WakaTime stats when only the all-time endpoint is still processing, instead of discarding them and falling back entirely to the cached snapshot.


