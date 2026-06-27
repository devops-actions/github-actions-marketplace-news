---
title: Velvet status page
date: 2026-06-27 22:18:31 +00:00
tags:
  - phranck
  - GitHub Actions
draft: false
repo: https://github.com/phranck/velvet
marketplace: https://github.com/marketplace/actions/velvet-status-page
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/phranck/velvet** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/velvet-status-page) to find the latest changes.

## What's Changed

The first stable release of **Velvet** — a polished, dark, open-source front-end for [Upptime](https://upptime.js.org) status pages. It replaces Upptime's stock Svelte/Sapper site with an indigo-monochrome design and a richer status UI, while staying a pure static page that reads your monitoring data at runtime. No server, no database.

## Highlights

- **Two layouts** — one card per service (`cards`) or a single grouped card.
- **Selectable history** — 24h / 7d / 30d / 90d / 1yr, with a configurable first-visit default (`velvet.defaultRange`).
- **IPv4 / IPv6 per service** — a normal check plus an optional [Globalping](https://globalping.io) IPv6 sibling fold into one card with status pills.
- **Live incidents & maintenance** — read from GitHub Issues at runtime, plus a static `/incidents.atom` feed behind a Subscribe button.
- **Expand / collapse-all** control beside the range selector, and GPU-composited (FLIP) card animations.
- **Themeable from `.upptimerc.yml`** — accent colours, fonts, logo, and per-service [Phosphor](https://phosphoricons.com) duotone icons.

## Use it

**Existing Upptime repo** — add a workflow step:

```yaml
- uses: phranck/velvet@v1.0.0
  with:
    config: .upptimerc.yml
    output: velvet-dist
```

**New project** — start from [velvet-template](https://github.com/phranck/velvet-template) via **Use this template**; it ships Upptime monitoring plus Velvet pre-wired, with optional maintenance and deploy banners.

Every option is documented in the [configuration reference](https://github.com/phranck/velvet/blob/main/CONFIGURATION.md).

