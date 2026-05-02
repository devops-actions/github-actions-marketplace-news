---
title: ghstats-cards
date: 2026-05-02 13:40:03 +00:00
tags:
  - tiennm99
  - GitHub Actions
draft: false
repo: https://github.com/tiennm99/ghstats
marketplace: https://github.com/marketplace/actions/ghstats-cards
version: v1.4.1
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/tiennm99/ghstats** to version **v1.4.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghstats-cards) to find the latest changes.

## Action Summary

The `ghstats` GitHub Action generates customizable SVG cards that visually summarize a GitHub user's profile, including activity trends, language usage, repository statistics, and contributions over time. It automates the process of creating aesthetically themed, data-rich visualizations for embedding in profile READMEs, helping users showcase their GitHub activity and achievements in a concise, engaging format. Key capabilities include support for various metrics like contribution heatmaps, language breakdowns, productivity patterns, and repository highlights.

## What's Changed

## Fixes

- **Contributions (last year) chart** — trim the daily series to a clean 13-month span ending at the current month. GitHub's `contributionCalendar` is week-aligned, so for queries late in a month the response bled into the calendar month before today minus one year, producing 14 monthly buckets and overlapping x-axis labels (e.g. `04/26` and `05/26` rendered next to each other). The chart now spans `last.Month - 1y` → `last.Month` exactly.

**Full Changelog**: https://github.com/tiennm99/ghstats/compare/v1.4.0...v1.4.1
