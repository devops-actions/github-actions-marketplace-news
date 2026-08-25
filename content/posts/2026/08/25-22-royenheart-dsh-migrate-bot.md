---
title: DSH Plugin Migrate Bot
date: 2026-08-25 22:54:59 +00:00
tags:
  - royenheart
  - GitHub Actions
draft: false
repo: https://github.com/royenheart/dsh-migrate-bot
marketplace: https://github.com/marketplace/actions/dsh-plugin-migrate-bot
version: v0.1.3
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates the migration of a third-party plugin by monitoring DeepSeek Harness releases. It runs on GitHub-hosted runners and uses a repository secret to authenticate with the API. The action resolves the target `dsh-v*` version, skips if it matches the last success version unless forced or `watch.enabled` is false. It performs mechanical tests, sparse-checkouts the harness tag, and reviews patches for compatibility. If the plugin tree is dirty, it creates an Issue and PR with links to patch reports and discussions.
---


Version updated for **https://github.com/royenheart/dsh-migrate-bot** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dsh-plugin-migrate-bot) to find the latest changes.

## Action Summary

This GitHub Action automates the migration of a third-party plugin by monitoring DeepSeek Harness releases. It runs on GitHub-hosted runners and uses a repository secret to authenticate with the API. The action resolves the target `dsh-v*` version, skips if it matches the last success version unless forced or `watch.enabled` is false. It performs mechanical tests, sparse-checkouts the harness tag, and reviews patches for compatibility. If the plugin tree is dirty, it creates an Issue and PR with links to patch reports and discussions.

## What's Changed

## Highlights

Fix the publish crash that turned two consumer Actions red after a successful A+B review. Also ship the quota cap, harness checkout, per-patch reports, and Issue comments that were already in the pipeline but not released.

Consumers pinning `royenheart/dsh-migrate-bot@v0` pick this up automatically. Re-run failed plugin jobs with `workflow_dispatch` and `force: true`.

## Fixes

- **Do not `git add` ignored `.dsh-migrate`.** The Action writes `.dsh-migrate/` into `.git/info/exclude`, then used `git add -A -- . :!.dsh-migrate`. Git treats that exclude pathspec as an explicit path and exits 1 (`The following paths are ignored by one of your .gitignore files`). Staging is now `git add -A -- .`, then unstage migrate-noise paths. This is why [mcp-support](https://github.com/royenheart/dsh-plugin-mcp-support/actions/runs/32874383283) and [structured-output](https://github.com/royenheart/dsh-plugin-structured-output/actions/runs/32874375835) failed after `mechanical after A+B: pass`.

## Added

- **This-run USD cap.** `quota.limit` in `.github/dsh-migrate.yml`, Action input `quota_limit`, or `--quota-limit`. Official DeepSeek rates × this Action’s own cache-miss / cache-hit / output tokens (peak/off-peak from each request timestamp). Not an account-wide spend cap. Official `is_available` still aborts when the wallet is empty.
- **Harness sparse-checkout** of the target `dsh-v*` into `.dsh-migrate/harness` so A/B/C can read official source, keep or drop a dsh-side patch, and test it. Not committed.
- **Per-patch reports** at `.dsh-migrate/patch-reports/<slug>/report.md`. Search official issues / PRs / discussions first; if none, write a discussion draft (`# [Feature request] …` plus the dsh-plugin-development sections).
- **Issue ↔ PR linking and comments.** PR body includes `Closes #<issue>`. After open, the Action comments on the Issue: companion PR URL, a patch-report index table, then each report body.
- **Status lines** every ~10s (turns / steps / elapsed / cache hit-miss / in-out). Model text is not streamed to GHA logs.

## Notes

- `.dsh-migrate/` and `.secrets.local.json` never count as a dirty plugin tree and are never committed. Upload `.dsh-migrate/` as an artifact.
- Insufficient official balance or a this-run spend over the cap aborts without opening an Issue or PR.
- Failed persist of `dsh-migrate/state` still fails the job so the next schedule retries.

**Full Changelog**: https://github.com/royenheart/dsh-migrate-bot/compare/v0.1.2...v0.1.3
