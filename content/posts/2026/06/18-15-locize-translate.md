---
title: locize translate
date: 2026-06-18 15:35:50 +00:00
tags:
  - locize
  - GitHub Actions
draft: false
repo: https://github.com/locize/translate
marketplace: https://github.com/marketplace/actions/locize-translate
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/locize/translate** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/locize-translate) to find the latest changes.

## What's Changed

First release of the free i18next CI translation action — a thin wrapper around `i18next-cli localize --ci`, completing the locize/sync · locize/download · locize/translate trio.

- `command`: `localize` (extract → sync → auto-translate → download; instrumentation always skipped in CI) or `sync` (already-extracted repos).
- Credentials via `with:` or env (`LOCIZE_PROJECTID`/`LOCIZE_PROJECT_ID`, `LOCIZE_API_KEY`/`LOCIZE_APIKEY`).
- Honest free-starter positioning + trust-layer upgrade (QE, review, provenance).

Usage: `uses: locize/translate@v1`
