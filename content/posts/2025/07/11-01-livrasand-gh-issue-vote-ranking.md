---
title: GitHub Issue Vote Ranking
date: 2025-07-11 01:13:54 +00:00
tags:
  - livrasand
  - GitHub Actions
draft: false
repo: https://github.com/livrasand/gh-issue-vote-ranking
marketplace: https://github.com/marketplace/actions/github-issue-vote-ranking
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/livrasand/gh-issue-vote-ranking** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-issue-vote-ranking) to find the latest changes.

## Release notes

Packaged Action with NCC

This release includes important improvements to ensure the action runs reliably in all GitHub workflows.

**What’s new in v1.0.1:**

* **Bundled all dependencies using `@vercel/ncc`**
  The action is now fully self-contained. It no longer depends on external `node_modules`, which resolves the `MODULE_NOT_FOUND` errors reported in v1.0.0.

* Updated `action.yml` to point to the new bundled entry file (`dist/index.js`)

* Improved production-readiness and compatibility across GitHub-hosted runners

No changes were made to the core logic of the vote ranking system. This release focuses on packaging and execution stability.

---

**Recommended for all users.** If you installed `v1.0.0`, please upgrade to `v1.0.1`.

**Full Changelog**: https://github.com/livrasand/gh-issue-vote-ranking/compare/v1.0.0...v1.0.1
