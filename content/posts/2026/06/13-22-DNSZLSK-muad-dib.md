---
title: MUADDIB Scanner
date: 2026-06-13 22:18:10 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.11.112
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.11.112**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## What's Changed

Root cause: api.npmjs.org/downloads 429s empoisonnaient le brain registry via signal429() sans host. Fix: host correct + best-effort single-shot. Plus npm auth, pre-resolve shedding, maintainer cache, daily clarity. Debit x3.4 (18->63 scans/min).
