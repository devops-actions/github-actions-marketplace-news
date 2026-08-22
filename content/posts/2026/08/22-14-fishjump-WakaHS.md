---
title: WakaHS - Update GitHub Profile
date: 2026-08-22 14:16:35 +00:00
tags:
  - fishjump
  - GitHub Actions
draft: false
repo: https://github.com/fishjump/WakaHS
marketplace: https://github.com/marketplace/actions/wakahs-update-github-profile
version: 0.2.4-dev
dependentsNumber: "6"
actionType: Docker
actionSummary: |
  This GitHub Action, WakaHS - Update GitHub Profile, automates the rendering and updating of a README.md file on a GitHub repository based on data from Wakatime and GitHub. It solves the problem of automatically tracking and displaying user statistics, such as weekly summaries and visitor badges, in a profile's README.md file. The action supports custom templates, allows for different progress bar styles, and can be triggered by push events or cron jobs.
---


Version updated for **https://github.com/fishjump/WakaHS** to version **0.2.4-dev**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wakahs-update-github-profile) to find the latest changes.

## Action Summary

This GitHub Action, WakaHS - Update GitHub Profile, automates the rendering and updating of a README.md file on a GitHub repository based on data from Wakatime and GitHub. It solves the problem of automatically tracking and displaying user statistics, such as weekly summaries and visitor badges, in a profile's README.md file. The action supports custom templates, allows for different progress bar styles, and can be triggered by push events or cron jobs.

## What's Changed

- update(VisitorBadge): change to countapi for visitor badge for more stability (90f138d)
- update(WeeklySummary):add 5 spaces after text hours (1db5d5d)
- fix(visitor-badge): remove the title because frequent visit may cause this resource temporarily unavailable, in this case, no title can hide this image (d53eab2)
- fix(action): fix image tag from merge master (e854e84)
- fix(test): fix test case type error (fe03146)
- feat(CodeTimeBadge): add code time badge support (fe07998)
- fix(action): change to master, was dev because of merge (793a08a)
- Merge pull request #7 from fishjump/dev (affc75e)
- doc(README): add example (d12b8ae)
- style(WeeklySummary): merge WeeklySummary data source (9f3364d)
