---
title: MUADDIB Scanner
date: 2026-06-28 22:21:56 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.11.135
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.11.135**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## What's Changed

Under chronic backlog (queue > shed threshold), schedulePrefetch was dead — no tarballUrl resolved, no capture, fast-takedown tarballs 404 before scan. New lane: realtimePrefetchHighRisk() resolves a bounded high-risk subset regardless of shed (flagged first, then burst/ATO discovery). Default OFF (MUADDIB_REALTIME_PREFETCH=1), capped 30/cycle, shared 429 semaphore. Completes the Fix A/P2/C chain: A declares the trigger, P2 filters FP, C makes it work under load.
