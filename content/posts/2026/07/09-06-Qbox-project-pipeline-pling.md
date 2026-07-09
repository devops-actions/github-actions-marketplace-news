---
title: Pipeline Pling
date: 2026-07-09 06:54:05 +00:00
tags:
  - Qbox-project
  - GitHub Actions
draft: false
repo: https://github.com/Qbox-project/pipeline-pling
marketplace: https://github.com/marketplace/actions/pipeline-pling
version: v1.1.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Qbox-project/pipeline-pling** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-pling) to find the latest changes.

## What's Changed

## Pipeline Pling v1.1.0

Adds two new ways to control which pushes and commits get posted to Discord.

### Silent commits

Exclude specific commits from notifications by putting `!silent` on the first line of the commit body:

```text
chore(deps): bump lockfile

!silent
```

- Silent commits are omitted from the message entirely
- If every commit in a push is silent, no webhook is sent
- Mixed pushes only show the remaining commits, with the correct count in the header (e.g. "is pushing 1 commit")

Configurable via the new `silent-keyword` input (default: `!silent`).

### Branch filtering

Control which branches trigger notifications with comma-separated branch lists:

- `branch-allowlist` — only notify for pushes to these branches
- `branch-denylist` — skip notifications for pushes to these branches

Branch matching is exact and case-sensitive (`refs/heads/main` → `main`). When both lists are set, a branch must be in the allowlist and not in the denylist.

### Usage

```yaml
- uses: Qbox-project/pipeline-pling@v1
  with:
    webhook-url: ${{ secrets.DISCORD_COMMIT_WEBHOOK }}
    silent-keyword: '!silent'        # optional, default
    branch-allowlist: 'main,develop' # optional
    branch-denylist: 'dependabot'    # optional
```

**Full Changelog**: https://github.com/Qbox-project/pipeline-pling/compare/v1.0.0...v1.1.0
