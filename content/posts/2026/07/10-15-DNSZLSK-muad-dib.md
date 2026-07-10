---
title: MUADDIB Scanner
date: 2026-07-10 15:18:13 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.11.164
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.11.164**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## What's Changed

Scan-ledger compaction (500K entries, 127MB) converted from synchronous to async streaming. Main-thread lag drops from minutes to <30ms. Sync finalization prevents append loss. Breaker stays reactive during compaction.
