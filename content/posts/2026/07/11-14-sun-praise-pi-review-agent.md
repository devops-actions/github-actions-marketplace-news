---
title: Pi Review Agent
date: 2026-07-11 14:09:35 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## What's new

- **Repository style-guide support**: `pi-review-agent` can now load a repo-level style-guide and inject it into reviewer prompts.
  - Auto-detected paths: `STYLE_GUIDE.md`, `.github/STYLE_GUIDE.md`, `docs/style-guide.md`, `.github/style-guide.md`.
  - New built-in `style` persona dedicated to style-guide enforcement.
  - `quality` persona now receives the style-guide by default.
  - Custom personas can opt in via `use-style-guide: true` in `.github/reviewers/*.yaml`.
  - Explicit override via `--style-guide` CLI flag or `style-guide` action input.

## Usage

```yaml
- uses: sun-praise/pi-review-agent@v1
  with:
    team: "quality:1,style:1,security:1"
    style-guide: "./docs/STYLE_GUIDE.md"
    litellm-url: ${{ secrets.LITELLM_URL }}
    litellm-api-key: ${{ secrets.LITELLM_API_KEY }}
```

Refer to `README.md` for full documentation.

