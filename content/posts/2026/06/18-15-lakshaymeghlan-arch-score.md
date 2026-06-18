---
title: arch-score
date: 2026-06-18 15:38:06 +00:00
tags:
  - lakshaymeghlan
  - GitHub Actions
draft: false
repo: https://github.com/lakshaymeghlan/arch-score
marketplace: https://github.com/marketplace/actions/arch-score
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lakshaymeghlan/arch-score** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/arch-score) to find the latest changes.

## What's Changed

Language-agnostic CLI that scores how well **any** project follows modern system-design standards — now with a **GitHub Action** and an **embeddable score badge**.

### ✨ New
- **GitHub Action** — run arch-score in CI, gate the build on a threshold, post a sticky PR comment, and publish a live score badge.
- **Score badge** — self-hosted SVG (or shields.io endpoint) that auto-updates on every push.
- **CLI flags:** `--emit-badge`, `--emit-badge-json`, `--emit-comment`.
- **Containerization** analyzer (Dockerfile/compose) for service projects.

### 🚀 Use it

```yaml
- uses: lakshaymeghlan/arch-score@v1
  with:
    threshold: "0"   # set > 0 to fail the build below that score
```

CLI alternative: `npx arch-score .`

### 📊 Quality
- Fully offline, zero paid dependencies.
- 59 tests; arch-score scores **itself 95/100 (A)**.

Docs → https://github.com/lakshaymeghlan/arch-score#ci--badge
