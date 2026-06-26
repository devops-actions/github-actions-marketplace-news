---
title: TryHackMe Badge
date: 2026-06-26 22:34:23 +00:00
tags:
  - KeizerSec
  - GitHub Actions
draft: false
repo: https://github.com/KeizerSec/Tryhackme-Badge
marketplace: https://github.com/marketplace/actions/tryhackme-badge
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KeizerSec/Tryhackme-Badge** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tryhackme-badge) to find the latest changes.

## What's Changed

## ⚠️ Breaking change

Since **June 1, 2026**, TryHackMe's public-profile API sits behind **Vercel's
anti-bot challenge**. It serves a JavaScript checkpoint (HTTP 429,
`x-vercel-mitigated: challenge`) to any request whose TLS/HTTP-2 fingerprint
isn't a real browser **and** to any **datacenter IP** — which includes **every
GitHub-hosted runner**.

**This action can no longer refresh your badge from GitHub Actions (cloud).**
It affects every user; it is not a bug in the action.

## What changed

- The profile fetch now goes through a small **`curl_cffi`** helper that
  reproduces a real Chrome TLS handshake, so the API returns JSON instead of the
  challenge — **no headless browser, no Chromium**.
- This only works from a **residential IP**, so the badge is now refreshed from
  **your own machine** via a small daily cron, not from a GitHub-hosted runner.
- The CI smoke test is now offline (renders from a fixture) and no longer
  depends on the live API.

## How to migrate (~5 min)

Replace the old cloud workflow with a local cron. Full guide in the
[README → Quick start](https://github.com/KeizerSec/Tryhackme-Badge#quick-start). In short:

```bash
pip install --user curl_cffi
git clone https://github.com/KeizerSec/Tryhackme-Badge.git ~/.thm-badge
# then schedule this daily, run from your profile repo:
THM_USERNAME=You THEME=rotate OUTPUT_PATH=assets/thm_badge.svg \
  node ~/.thm-badge/src/generate.js \
  && git add -A && git commit -m "chore: refresh TryHackMe badge" && git push
```

Linux → `cron`, macOS → `launchd` (template in `scripts/`), Windows → Task Scheduler.

## Requirements

- A machine on a **residential** connection (laptop, home server, Raspberry Pi…)
- Node.js 20+ and Python 3 with `curl_cffi`

## Notes

- The old `v1` tags are kept as-is for history — they predate this change and
  still hit the Vercel wall on cloud runners.
- Same badge, same five themes — only *where it runs* changed.

