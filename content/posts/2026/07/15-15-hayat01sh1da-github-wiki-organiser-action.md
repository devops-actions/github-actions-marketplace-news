---
title: GitHub Wiki Organiser
date: 2026-07-15 15:06:04 +00:00
tags:
  - hayat01sh1da
  - GitHub Actions
draft: false
repo: https://github.com/hayat01sh1da/github-wiki-organiser-action
marketplace: https://github.com/marketplace/actions/github-wiki-organiser
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action organises a GitHub wiki by regenerating the `Home.md` and `_Sidebar.md` files based on the Owner/Category declared at the beginning of each page, grouping them accordingly (English and Japanese labels built in). It also allows exporting reports or generating LLM exports of pages with unknown owner or category. The action is powered by the `spreen-wiki` PyPI package and requires a token to check out and push changes to the wiki repository.
---


Version updated for **https://github.com/hayat01sh1da/github-wiki-organiser-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-wiki-organiser) to find the latest changes.

## Action Summary

This GitHub Action organises a GitHub wiki by regenerating the `Home.md` and `_Sidebar.md` files based on the Owner/Category declared at the beginning of each page, grouping them accordingly (English and Japanese labels built in). It also allows exporting reports or generating LLM exports of pages with unknown owner or category. The action is powered by the `spreen-wiki` PyPI package and requires a token to check out and push changes to the wiki repository.

## What's Changed

First release of the **GitHub Wiki Organiser** composite action: `uses: hayat01sh1da/github-wiki-organiser-action@v0.1.0` — powered by the [spreen-wiki](https://pypi.org/project/spreen-wiki/) PyPI package.

## 1. Added

* Composite action that checks out the caller's wiki (`wiki-repository`, defaulting to the calling repository's own wiki), installs the pinned `spreen-wiki==0.1.0` PyPI package, and runs the `spreen` CLI (`update` / `count-report` / `llm-export` selected via `command`).
* Inputs mirroring the CLI flags (`group-by`, `language`, `home-overflow`, `template-dir`, `output`) plus action-side controls (`token`, `push`, `commit-message`, `slack-webhook-url`).
* Commit-and-push of wiki changes as `github-actions[bot]` when the run produced a diff, exposed via the `changed` output; optional Slack Incoming Webhook notification on pushed changes.
* `Action - CI` workflow dry-running `update` and `count-report` against the [spreen-wiki wiki](https://github.com/hayat01sh1da/spreen-wiki/wiki) on every change to `action.yml`.

## 2. Full Changelog

https://github.com/hayat01sh1da/github-wiki-organiser-action/commits/v0.1.0

