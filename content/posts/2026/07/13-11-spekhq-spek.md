---
title: spek - OpenSpec Static Site
date: 2026-07-13 11:29:51 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Spek is a lightweight, read-only viewer designed to explore OpenSpec content. It provides structured browsing with BDD syntax highlighting, task progress tracking, and full-text search capabilities. spek turns your local OpenSpec directory into an accessible interface, enabling users to browse specs, changes, and tasks in a hierarchical manner. The action automates the process of aggregating multiple git worktrees into one view, offering a comprehensive overview of project changes and tasks.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

Spek is a lightweight, read-only viewer designed to explore OpenSpec content. It provides structured browsing with BDD syntax highlighting, task progress tracking, and full-text search capabilities. spek turns your local OpenSpec directory into an accessible interface, enabling users to browse specs, changes, and tasks in a hierarchical manner. The action automates the process of aggregating multiple git worktrees into one view, offering a comprehensive overview of project changes and tasks.

## What's Changed


- **spek has moved to the `spekhq` GitHub organization** — the repository is now [`spekhq/spek`](https://github.com/spekhq/spek). Clones, links, issues, and stars redirect automatically, so for most users there is nothing to do. **Two things do not redirect:**
  - **GitHub Action users must update their workflows** — change `uses: kewang/spek@v1` to `uses: spekhq/spek@v1`. GitHub deliberately does not redirect action references (a redirect would let a rename hijack someone else's action), so the old path now fails with `repository not found`.
  - **The live demo and the README badges moved** to `https://spekhq.github.io/spek/`. GitHub Pages is not redirected after a transfer, so the old `kewang.github.io/spek/` URLs are gone for good.
- **GitHub Action: fixed a build failure that hit every run** — the action never built `@spekjs/ui` explicitly; it got that package's `dist` for free from an install-time hook that `npm ci` happened to run. When the hook moved to publish time (so `npm ci` would stop failing in the publish pipelines), the action silently lost its `@spekjs/ui` build and every run died resolving `@spekjs/ui/styles.css`. Pinning an older tag did not help — the action builds spek from `master` by default, so the breakage reached everyone at once. The action now builds `@spekjs/ui` explicitly.
