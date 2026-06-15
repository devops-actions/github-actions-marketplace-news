---
title: Executable Stories
date: 2026-06-15 16:09:30 +00:00
tags:
  - jagreehal
  - GitHub Actions
draft: false
repo: https://github.com/jagreehal/executable-stories-action
marketplace: https://github.com/marketplace/actions/executable-stories
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jagreehal/executable-stories-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/executable-stories) to find the latest changes.

## What's Changed

Four optional modes join the default `report` mode.

**New modes**
- `review` — correlate the test run to the PR diff; band changed files as uncovered, weak, or strong
- `gate-release` — fail the job when an RC run regresses or drops scenarios vs a dev baseline
- `deploy` — record a deployment in an environment ledger
- `portal` — build a Living-Docs Portal static site; optional GitHub Pages publish

**Fixes**
- PR comments strip base64 screenshots (GitHub blocks them); placeholders link to the HTML artifact
- `host-images: branch` commits screenshots to an orphan branch so they render inline

**Docs**
- README adds prerequisites, recipes, troubleshooting, and FAQ

**Upgrade**
Default mode is still `report`. Workflows on `@v1` pick this up on the next run. Pin `@v1.0.0` to stay on the April build. New modes are opt-in via `mode`.
