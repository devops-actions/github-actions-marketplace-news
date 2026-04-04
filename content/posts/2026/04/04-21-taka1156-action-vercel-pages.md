---
title: Reusable Vercel Deploy Workflow
date: 2026-04-04 21:39:55 +00:00
tags:
  - taka1156
  - GitHub Actions
draft: false
repo: https://github.com/taka1156/action-vercel-pages
marketplace: https://github.com/marketplace/actions/reusable-vercel-deploy-workflow
version: 1.00
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/taka1156/action-vercel-pages** to version **1.00**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reusable-vercel-deploy-workflow) to find the latest changes.

## Action Summary

This GitHub Action automates the preparation of a deployment branch for Vercel by managing files based on a `.vercelkeep` configuration. It deletes unnecessary files from the runner’s workspace, commits the remaining or specified files, and pushes them to a designated `vercel` branch for deployment. This helps streamline Vercel deployments by ensuring only the necessary files are included, preventing clutter or mismanaged assets in production.

## What's Changed

## v1.0.0 - Initial Release (2026-03-30)

### 🎉 Initial Release

A GitHub composite action that deploys your project to Vercel by managing a dedicated deployment branch (default: `vercel`).

This workflow mirrors the concept of `gh-pages` deployment: instead of pushing to GitHub Pages, it pushes a curated set of files to a `vercel` branch, which you set as the production branch in Vercel's settings.

### ✨ Features

- Filters files to deploy based on a `.vercelkeep` allowlist
  - Tracked files listed in `.vercelkeep` → kept as-is
  - Untracked files listed in `.vercelkeep` (e.g. build outputs) → staged and pushed
  - Tracked files **not** in `.vercelkeep` → removed from Git and deleted from disk
- Commits and force-pushes the result to the deployment branch
- Configurable Git identity (`git_name`, `git_email`)
- Custom commit message support (auto-generated if omitted, JST timezone)
- `dry_run` mode to preview changes without pushing
- `root_path` input to support monorepo layouts

### ⚠️ Important Notes

- File deletions from the runner's working copy are **permanent and irreversible**.
- Always verify `.vercelkeep` before running this action.
- It is strongly recommended to run with `dry_run: "true"` first.
- This action does **not** modify your `main`/`master` branch.

### Inputs

| Input | Default | Description |
|---|---|---|
| `branch` | `vercel` | Deployment branch name |
| `git_name` | `GitHub Actions` | Git user.name |
| `git_email` | `actions@github.com` | Git user.email |
| `commit_message` | *(auto)* | Commit message |
| `dry_run` | `false` | Skip push if `true` |
| `root_path` | `.` | Path to dir containing `.vercelkeep` |

### Usage

```yaml
- uses: taka1156/action-vercel-pages@v1.0.0
  with:
    branch: vercel
    dry_run: "false"
```

