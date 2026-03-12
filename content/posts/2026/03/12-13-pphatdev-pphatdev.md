---
title: Waka README Daily Stats
date: 2026-03-12 13:34:44 +00:00
tags:
  - pphatdev
  - GitHub Actions
draft: false
repo: https://github.com/pphatdev/pphatdev
marketplace: https://github.com/marketplace/actions/waka-readme-daily-stats
version: v1.0.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/pphatdev/pphatdev** to version **v1.0.4**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waka-readme-daily-stats) to find the latest changes.

## Action Summary

This GitHub Action automates the generation and visualization of GitHub contribution statistics, including activity breakdowns, such as languages used, repository stats, and coding trends. It provides developers with detailed, visually appealing insights into their coding habits and project contributions, making it easier to track progress and showcase their work. The action is designed to enhance productivity and simplify the process of monitoring coding activity efficiently.

## Release notes

<!--START_SECTION:daily-->
```diff
████████░░░░░░░░░░░░░░░░░ ⁝ 33.27% • JavaScript
█████░░░░░░░░░░░░░░░░░░░░ ⁝ 19.61% • TypeScript
████░░░░░░░░░░░░░░░░░░░░░ ⁝ 16.97% • Markdown
████░░░░░░░░░░░░░░░░░░░░░ ⁝ 14.76% • Image (svg)
██░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 8.88% • Blade Template
█░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 3.36% • Other
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 1.94% • PHP
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.62% • CSS
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.27% • MDX
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.19% • XML
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.07% • JSON
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.04% • Python
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.01% • Git
░░░░░░░░░░░░░░░░░░░░░░░░░ ⁝ 0.0% • YAML
```
<!--END_SECTION:daily-->

# Release Guide 🚀

This document explains this project in simple terms and shows how to use it.



## What This Project Is 📦

This repository provides a composite GitHub Action that automatically updates your README daily coding stats using WakaTime.

It does three main things:

1. Fetches yesterday coding data from WakaTime
2. Updates `README.md` between:
    - `<!--START_SECTION:daily-->`
    - `<!--END_SECTION:daily-->`
3. Saves raw response data into `data/coding_stats.json`

Main action definition is in `action.yml`.

## What It Works For 🎯

Use this project when you want to:

1. Keep your profile or repository README coding stats fresh automatically
2. Show language/activity summary without manual updates
3. Run updates on schedule using GitHub Actions
4. Commit only when files changed using action output `changed`

## How To Use 🛠️

### 1. Add daily markers to README

Your `README.md` must include:

```md
<!--START_SECTION:daily-->
<!--END_SECTION:daily-->
```

### 2. Configure secrets

In repository settings, add:

1. `WAKA_KEY` (required, your WakaTime API token)
2. `GITHUB_TOKEN` is provided automatically by GitHub Actions

### 3. Add workflow

Create `.github/workflows/update-readme.yml`:

```yaml
name: Update README Daily

on:
   schedule:
      - cron: "0 */6 * * *"
   workflow_dispatch:

permissions:
   contents: write

jobs:
   update:
      runs-on: ubuntu-latest
      steps:
         - uses: actions/checkout@v4

         - name: Run Waka README Action
            id: daily
            uses: pphatdev/pphatdev@v1
            with:
               waka-token: ${{ secrets.WAKA_KEY }}
               github-token: ${{ secrets.GITHUB_TOKEN }}
               bar-style: block

         - name: Commit generated files
            if: steps.daily.outputs.changed == 'true'
            uses: stefanzweifel/git-auto-commit-action@v5
            with:
               commit_message: "chore(readme): update daily coding stats"
               file_pattern: "README.md data/coding_stats.json"
```

### 4. Inputs and output

Inputs:

1. `waka-token` (required)
2. `github-token` (optional)
3. `waka-api` (optional, default `https://wakatime.com/api/v1`)
4. `bar-style` (optional)
5. `python-version` (optional, default `3.12`)
6. `entrypoint` (optional, default `src/main.py`)

Output:

1. `changed`:
    - `true` when `README.md` or `data/coding_stats.json` changed
    - `false` when no update was needed

## Changelog 📝

### v1.0.4 (2026-03-12)

**Bug Fixes:**
- Removed `setup-python` pip caching (`cache: "pip"` and `cache-dependency-path`)
- `cache-dependency-path` only resolves globs within the caller's workspace, so it cannot reference the action's own `requirements.txt`
- Direct `pip install` in shell step handles dependencies correctly for all use cases

### v1.0.3 (2026-03-12)

**Bug Fixes:**
- Resolved `${{ github.action_path }}` to absolute path before using in `setup-python`
- Fixes issue where `github.action_path` returns `.` in owner's own repo

### v1.0.2 (2026-03-12)

**Bug Fixes:**
- Fixed `cache-dependency-path` to use `${{ github.action_path }}/requirements.txt` so it resolves to the action's own file, not the caller's repo
- Fixed `.env.example` copy path to use `${{ github.action_path }}/.env.example` for non-forked repos
- Action now works correctly when used from any repository via GitHub Marketplace

### v1.0.1 (2026-03-12)

**Bug Fixes:**
- Fixed cache-dependency-path error for GitHub Marketplace users
- Use glob pattern `**/requirements.txt` for pip dependency caching instead of invalid relative paths
- Ensure action works correctly when installed from GitHub Marketplace

**Improvements:**
- Better compatibility with GitHub Actions setup-python@v5

### v1.0.0

Initial stable release with composite action for WakaTime stats.

## Quick Release Notes (Maintainers) 🧾

When publishing a new version:

1. Create full tag (example `v1.0.0`)
2. Move major tag (`v1`) to same commit
3. Publish GitHub release
4. Keep changelog clear and user-focused

