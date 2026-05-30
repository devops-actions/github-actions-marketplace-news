---
title: SVG Terminal Generator
date: 2026-05-30 14:13:11 +00:00
tags:
  - williamzujkowski
  - GitHub Actions
draft: false
repo: https://github.com/williamzujkowski/svg-terminal
marketplace: https://github.com/marketplace/actions/svg-terminal-generator
version: v1.2.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/williamzujkowski/svg-terminal** to version **v1.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svg-terminal-generator) to find the latest changes.

## Action Summary

The `svg-terminal` GitHub Action generates animated, self-contained SVG terminal outputs from a declarative YAML configuration, offering a customizable and visually engaging way to display terminal-style content. It automates the creation of dynamic SVGs with built-in themes, animations, and blocks while ensuring compatibility with GitHub's sandbox environment. Key features include schema validation, support for reduced motion settings, and the ability to integrate with GitHub workflows for tasks like auto-updating profile READMEs.

## What's Changed

## v1.2.2 — 2026-05-30 — fix: action broke for consumers without a lockfile

Patch release. **Fixes the GitHub Action for its primary use case.**

- **`action.yml` no longer sets `cache: 'npm'` on setup-node (`#131`).** `actions/setup-node`'s npm cache requires a `package-lock.json` in the *calling* repo — but most consumers are profile-README / docs repos with no Node project, so every run failed with `Dependencies lock file is not found`. The action only does a single `npm install -g`, so the cache wasn't worth that constraint. Removing it unbreaks the action for the profile-README workflow it was built for. (Found by wiring it into a real profile repo.)

No library code changed (464 tests, identical output).


