---
title: GitHub README stats generator
date: 2026-04-14 06:37:26 +00:00
tags:
  - UlyssesZh
  - GitHub Actions
draft: false
repo: https://github.com/UlyssesZh/grs-action
marketplace: https://github.com/marketplace/actions/github-readme-stats-generator
version: v0.3.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/UlyssesZh/grs-action** to version **v0.3.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-stats-generator) to find the latest changes.

## Action Summary

The **grs-action** GitHub Action automates the generation of customizable GitHub Readme Stats cards, such as user statistics, repository insights, programming languages, and more, for enhancing GitHub profile READMEs. It simplifies the process of fetching and visualizing GitHub data, allowing users to create and save dynamic, visually appealing stats cards without manual effort. Note: This action is deprecated in favor of [github-readme-stats-action](https://github.com/stats-organization/github-readme-stats-action).

## What's Changed

- bump dep; change example workflow url to pin to a commit because i will move away from using this action (32a85a7)
- add deprecation warning (0cd3335)
- fix caching (7d6d316)
- fix caching on windows (4be80f7)
- use actions/cache instead of actions/setup-node for caching node_modules (d40ade6)
- add notice of demo card in readme (a9e3c0b)
- fix multi-platform artifact (0fe6bd4)
- better caching for npm packages; default token (5947cd2)
- misc improvement (fae1ea3)
- try fixing wrong destination of action output (f0acffb)
