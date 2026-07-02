---
title: Remyx Outrider
date: 2026-07-02 14:51:16 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.6
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.6**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

The v1.7.5 cocoindex install step ran `ccc --version` as a sanity check, but the typer app doesn't expose a --version flag so it raised a red "No such option '--version'" error box in the Actions UI. The `|| true` suppression meant the step still succeeded, but the visible error box was misleading.

Replaces with a quiet `command -v ccc` PATH check. No functional change.
