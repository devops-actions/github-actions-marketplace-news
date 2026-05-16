---
title: Caffeine Language Action
date: 2026-05-16 21:28:00 +00:00
tags:
  - Brickell-Research
  - GitHub Actions
draft: false
repo: https://github.com/Brickell-Research/caffeine_lang_github_action
marketplace: https://github.com/marketplace/actions/caffeine-language-action
version: v0.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Brickell-Research/caffeine_lang_github_action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/caffeine-language-action) to find the latest changes.

## Action Summary

The **caffeine-lang GitHub Action** integrates the Caffeine language into CI workflows, enabling automated compilation of vendor measurement files and expectation files for service level objectives (SLOs). It simplifies the process of generating output files for tools like Terraform by automating the setup and execution of the Caffeine compiler. This action is particularly useful for maintaining reproducibility and preventing issues with breaking changes by offering a pinned version of the Caffeine compiler.

## What's Changed

Up to this point we'd been the main and possibly only users of this Github Action. Thus, pulling latest Caffeine version per release was fine. However, I now know that at least one place beyond the place I work is using it, so we're introducing pinned versioning as to not break the other user who won't likely be aware of and update for whatever 6.0.0 I might release.

**Full Changelog**: https://github.com/Brickell-Research/caffeine_lang_github_action/compare/v0.1.9...v0.2.0
