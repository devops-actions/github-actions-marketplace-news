---
title: GASS - Github Activity Scoring System
date: 2026-03-25 06:00:21 +00:00
tags:
  - michael-bey
  - GitHub Actions
draft: false
repo: https://github.com/michael-bey/gass
marketplace: https://github.com/marketplace/actions/gass-github-activity-scoring-system
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/michael-bey/gass** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gass-github-activity-scoring-system) to find the latest changes.

## Action Summary

The GASS GitHub Action uses AI to analyze and score the quality of pull request code, then stores the results on-chain using the O2 Oracle platform. It automates code quality reviews, enabling repositories to generate developer performance metrics for use in applications such as token distribution, contributor reputation systems, and community rewards. Key capabilities include AI-driven scoring, integration with blockchain systems, and seamless compatibility with repositories for on-chain developer analytics.

## Release notes

## Changes

- **Fix**: Rebuilt `dist/index.js` from current `src/action.ts` — the compiled action was missing from the main branch
- **Fix**: Corrected `action.yml` author field
- **Fix**: Updated `package.json` name to `gass`
- **Docs**: README usage now references `@v1` for stability instead of `@main`
- **CI**: Added `test-action.yml` workflow for testing the action locally via `uses: ./` on PRs

## Usage

```yaml
- name: GASS Code Quality Score
  uses: michael-bey/gass@v1
  with:
    o2_email: ${{ secrets.O2_EMAIL }}
    o2_password: ${{ secrets.O2_PASSWORD }}
    o2_app_id: ${{ secrets.O2_APP_ID }}
    o2_prop_list_id: ${{ secrets.O2_PROP_LIST_ID }}
    openrouter_api_key: ${{ secrets.OPENROUTER_API_KEY }}
```
