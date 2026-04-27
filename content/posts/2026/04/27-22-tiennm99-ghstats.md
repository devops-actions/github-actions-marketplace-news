---
title: ghstats-cards
date: 2026-04-27 22:01:38 +00:00
tags:
  - tiennm99
  - GitHub Actions
draft: false
repo: https://github.com/tiennm99/ghstats
marketplace: https://github.com/marketplace/actions/ghstats-cards
version: v1.1.1
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/tiennm99/ghstats** to version **v1.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghstats-cards) to find the latest changes.

## Action Summary

The `ghstats` GitHub Action generates customizable SVG cards that visually summarize a user's GitHub profile, including metrics like contributions, repositories, languages used, productivity patterns, and more. It automates the process of fetching and presenting this data in an aesthetic and shareable format, making it ideal for enhancing GitHub profile READMEs. Key features include various pre-designed card types such as contribution heatmaps, language distribution, and activity trends over time.

## What's Changed

- chore(action): rename Marketplace display to ghstats-cards (d205865)
- build: refresh dracula samples at 340x200 (3f95495)
- refactor(card): shrink cards from 500x220 to 340x200 (d0c75d5)
- docs: refresh for context plumbing, rate-limit handling, phase 6 (0310b7a)
- build: update stats sample to match N9 label change (eb9bdc2)
- test: meaningful escape check, single-slice donut, utcOffsetLabel (4aee086)
- feat(client): thread context.Context and honor rate-limit backoff (1bf7b30)
- refactor(model): rename TotalContributions → TotalContributionsLastYear (cc7d0c6)
- fix: donut single-slice, partial-year warn, hoist per-repo total (76cf242)
- chore: small hygiene fixes from code review (fcfec9a)
