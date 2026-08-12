---
title: MigrationPilot
date: 2026-08-12 22:55:05 +00:00
tags:
  - mickelsamuel
  - GitHub Actions
draft: false
repo: https://github.com/mickelsamuel/migrationpilot
marketplace: https://github.com/marketplace/actions/migrationpilot
version: v1.6.1
dependentsNumber: "1"
actionSummary: |
  MigrationPilot is a GitHub Action that analyzes PostgreSQL migration SQL files to ensure they adhere to best practices and are free of common issues. It checks 112 rules, including locking behavior, query timeouts, and index creation methods, ensuring migrations are safe before merging into the main branch. The action outputs detailed reports with violation summaries and suggestions for improving the migration scripts.
---


Version updated for **https://github.com/mickelsamuel/migrationpilot** to version **v1.6.1**.

- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migrationpilot) to find the latest changes.

## Action Summary

MigrationPilot is a GitHub Action that analyzes PostgreSQL migration SQL files to ensure they adhere to best practices and are free of common issues. It checks 112 rules, including locking behavior, query timeouts, and index creation methods, ensuring migrations are safe before merging into the main branch. The action outputs detailed reports with violation summaries and suggestions for improving the migration scripts.

## What's Changed

- build(action): bundle dist/action for v1.6.1 (bab9820)
- test(enterprise): pin homedir so the auth tests are hermetic on clean CI (fd9cc4a)
- chore(site): regenerate the hero fixture for 1.6.1 (d91e66b)
- bench: v1.6.1 catches the invalid-index retry (u13) — 31/33 strict, regenerated on a quiet machine (c602273)
- chore: v1.6.1 — version cascade, changelog, cli-reference completeness, refreshed benchmark numbers (2dede01)
- test: regenerate snapshots for the merged engine (1051c50)
- merge: close the last-mile gaps a first user hits — pre-commit, schema, simulate, the safe-index recipe (288eb97)
- merge: the Action survives a read-only token, and the report a reviewer can act on (b9c9842)
- docs: the seven commands the CLI reference never mentioned (4553851)
- fix(cli): stop offering to silence the criticals that just fired (0266c83)
