---
title: AI Access Check
date: 2026-08-24 22:49:52 +00:00
tags:
  - taylorsmithgg
  - GitHub Actions
draft: false
repo: https://github.com/taylorsmithgg/ai-access-check
marketplace: https://github.com/marketplace/actions/ai-access-check
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The GitHub Action `AI Access Check` automates the process of verifying whether AI crawlers and answer engines can access, read, and cite a site. It checks three key conditions: robots.txt, edge server handling, and HTML content with text without JavaScript. The action fails the build if any condition is not met or if the overall score falls below a specified threshold.
---


Version updated for **https://github.com/taylorsmithgg/ai-access-check** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-access-check) to find the latest changes.

## Action Summary

The GitHub Action `AI Access Check` automates the process of verifying whether AI crawlers and answer engines can access, read, and cite a site. It checks three key conditions: robots.txt, edge server handling, and HTML content with text without JavaScript. The action fails the build if any condition is not met or if the overall score falls below a specified threshold.

## What's Changed

GitHub Marketplace launch. Fail CI when a deploy blocks AI crawlers or ships HTML that answer engines cannot read. Checks robots.txt, edge behavior, and server-rendered text; posts the evidence to the job summary or pull request.
