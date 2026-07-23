---
title: spek - OpenSpec Static Site
date: 2026-07-23 06:29:31 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.9.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The spek GitHub Action provides a lightweight, read-only viewer for OpenSpec content, offering structured browsing with BDD syntax highlighting, task progress tracking, and full-text search. It automates the process of displaying and managing specs, changes, and tasks in a single interface, making it easier to collaborate and understand complex projects.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.9.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

The spek GitHub Action provides a lightweight, read-only viewer for OpenSpec content, offering structured browsing with BDD syntax highlighting, task progress tracking, and full-text search. It automates the process of displaying and managing specs, changes, and tasks in a single interface, making it easier to collaborate and understand complex projects.

## What's Changed

- **The IntelliJ plugin opens again on IDEs built on platform 2026.2.** Opening the Tool Window threw an IDE Internal Error and left no viewer at all, so the plugin was unusable — 2026.2 moved JCEF into a bundled plugin whose classes the plugin could no longer see ([#24](https://github.com/spekhq/spek/issues/24), reported on WebStorm 2026.2 with plugin 1.9.0). The embedded webview is restored, and JCEF being unavailable for any reason now degrades to the external-browser fallback instead of crashing — which is what makes the next platform change of this kind an inconvenience rather than an outage.
- **The timeline's "group by topic" works when worktree aggregation is on.** Every change landed in the "(no topic)" lane, which read as though the repo had no spec relationships at all. Nothing looked broken — the chart rendered exactly as it does when the grouping is genuinely empty. Repos with a single worktree were unaffected ([#25](https://github.com/spekhq/spek/issues/25), reported by a downstream consumer of the `@spekjs/ui` package). Web and VS Code only; the IntelliJ plugin has no worktree aggregation, so it never hit this.

Also released: **`@spekjs/ui@1.1.0`** — the same grouping fix for registry consumers, plus a new exported `changeNodeSlug(node)` helper for resolving graph change node ids. See `packages/ui/CHANGELOG.md`.

