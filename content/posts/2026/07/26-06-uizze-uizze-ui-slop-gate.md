---
title: UIZZE UI Slop Gate
date: 2026-07-26 06:27:35 +00:00
tags:
  - uizze
  - GitHub Actions
draft: false
repo: https://github.com/uizze/uizze-ui-slop-gate
marketplace: https://github.com/marketplace/actions/uizze-ui-slop-gate
version: v1.0.8
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, **Stop Making UI Slop**, automates the detection of concrete finish risks in frontend code changes. It checks for specific issues such as inert or placeholder controls, data-driven UI without loading states, hardcoded color values bypassing semantic tokens, and generic dashboard cues. The action runs entirely on the runner and does not upload any sensitive information. Users can pin released versions of the action to maintain supply-chain integrity.
---


Version updated for **https://github.com/uizze/uizze-ui-slop-gate** to version **v1.0.8**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uizze-ui-slop-gate) to find the latest changes.

## Action Summary

This GitHub Action, **Stop Making UI Slop**, automates the detection of concrete finish risks in frontend code changes. It checks for specific issues such as inert or placeholder controls, data-driven UI without loading states, hardcoded color values bypassing semantic tokens, and generic dashboard cues. The action runs entirely on the runner and does not upload any sensitive information. Users can pin released versions of the action to maintain supply-chain integrity.

## What's Changed

### Free visual escalation

After a useful local source-level result, the Action can now optionally point reviewers to UIZZE's free UI Slop Score for a rendered-screen review and PR-ready repair note.

The Action remains fully local: no source, screenshots, or findings leave the runner. The visual score is a separate opt-in browser tool; it requires no signup and processes the screenshot transiently.
