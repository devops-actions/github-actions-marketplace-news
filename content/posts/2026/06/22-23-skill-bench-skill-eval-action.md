---
title: Skill Eval
date: 2026-06-22 23:43:23 +00:00
tags:
  - skill-bench
  - GitHub Actions
draft: false
repo: https://github.com/skill-bench/skill-eval-action
marketplace: https://github.com/marketplace/actions/skill-eval
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skill-bench/skill-eval-action** to version **v1.3.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-eval) to find the latest changes.

## What's Changed

- Add `allowed-tools` and `permission-mode` inputs to grant scoped tool permissions to the skill under test, forwarded to `claude --allowedTools` / `--permission-mode`. Fixes skills that diagnose by running read-only commands failing because every tool call was auto-denied (#2)
- Support per-case `allowed_tools` (string or list) and `permission_mode` overrides in eval YAML, validated before any API calls
- Install the claude CLI from a committed lockfile (`package.json` + `package-lock.json`, `npm ci`) instead of an ad-hoc global install, pinning transitive dependencies
