---
title: GitHub Wiki Organiser
date: 2026-07-31 15:00:04 +00:00
tags:
  - hayat01sh1da
  - GitHub Actions
draft: false
repo: https://github.com/hayat01sh1da/github-wiki-organiser-action
marketplace: https://github.com/marketplace/actions/github-wiki-organiser
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the organization of a GitHub wiki by regenerating `Home.md` and `_Sidebar.md`, grouping pages based on Owner or Category declared at the top of each page (with built-in English and Japanese labels). It also provides an option to export reports of unknown owner or category pages. The action uses the `spreen-wiki` package for processing, checks out the wiki repository, runs a CLI command, commits changes if any, and optionally notifies Slack about the updates.
---


Version updated for **https://github.com/hayat01sh1da/github-wiki-organiser-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-wiki-organiser) to find the latest changes.

## Action Summary

This GitHub Action automates the organization of a GitHub wiki by regenerating `Home.md` and `_Sidebar.md`, grouping pages based on Owner or Category declared at the top of each page (with built-in English and Japanese labels). It also provides an option to export reports of unknown owner or category pages. The action uses the `spreen-wiki` package for processing, checks out the wiki repository, runs a CLI command, commits changes if any, and optionally notifies Slack about the updates.

## What's Changed

Maintenance release of the **GitHub Wiki Organiser** composite action: `uses: hayat01sh1da/github-wiki-organiser-action@v0.1.1` — powered by the [spreen-wiki](https://pypi.org/project/spreen-wiki/) PyPI package.

## 1. Fixed

* `README.md` described the action as running the `spreen` CLI. That executable was renamed to `wiki-organise` in `spreen-wiki` 0.3.0 (RubyGem) / 0.2.0 (PyPI), and `action.yml` has invoked the new name since the pin moved to 0.2.0 — only the prose was left behind, documenting a command that no longer exists in any published version of the package.

## 2. Changed

* Bumped the pinned `spreen-wiki` version 0.2.0 → 0.2.1, picking up the fix for `wiki-organise --version` reporting `0.1.0`. The action never invokes `--version`, so runtime behaviour is unchanged; the bump keeps the pin on the current release per the per-release pinning policy.

## 3. Full Changelog

* https://github.com/hayat01sh1da/github-wiki-organiser-action/compare/v0.1.0...v0.1.1

