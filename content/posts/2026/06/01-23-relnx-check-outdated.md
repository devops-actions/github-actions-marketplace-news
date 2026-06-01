---
title: Relnx — Check Outdated Tools
date: 2026-06-01 23:45:33 +00:00
tags:
  - relnx
  - GitHub Actions
draft: false
repo: https://github.com/relnx/check-outdated
marketplace: https://github.com/marketplace/actions/relnx-check-outdated-tools
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/relnx/check-outdated** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/relnx-check-outdated-tools) to find the latest changes.

## What's Changed

First public release of **Relnx — Check Outdated Tools** 🎉

Fails your CI when the cloud-native tools your repo pins are behind the latest
release — or, more importantly, when they have **security fixes** or **breaking
changes** you haven't picked up yet. Data from [relnx.io](https://relnx.io).

## ✨ Features
- 🔒 Security-aware gate: `fail-on: security | breaking | outdated | none`
- 📦 Reads your Helm `Chart.lock`, or an explicit `slug@version` list
- 📊 Per-tool job-summary table (current vs latest, behind count, security/breaking)
- 🪶 Dependency-free (Node 20) — no token required

## 🚀 Usage

```yaml
- uses: actions/checkout@v4
- uses: relnx/check-outdated@v1
  with:
   api-key: ${{ secrets.RELNX_API_KEY }}
    chart-lock: ./charts/platform/Chart.lock
    fail-on: security
```

📚 Docs: https://github.com/relnx/check-outdated#readme
