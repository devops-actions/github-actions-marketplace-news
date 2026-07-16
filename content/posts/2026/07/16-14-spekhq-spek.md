---
title: spek - OpenSpec Static Site
date: 2026-07-16 14:46:34 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.8.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Spek** is a lightweight read-only viewer that transforms local OpenSpec directories into an interactive, structured interface. It provides features like dashboard overview, spec browsing, change management, Git worktree aggregation, timeline visualization, BDD syntax highlighting, task progress tracking, and full-text search. The tool is available in various forms including web apps, VS Code extensions, and IntelliJ plugins, all designed for read-only access to OpenSpec content without server deployment or authentication.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

**Spek** is a lightweight read-only viewer that transforms local OpenSpec directories into an interactive, structured interface. It provides features like dashboard overview, spec browsing, change management, Git worktree aggregation, timeline visualization, BDD syntax highlighting, task progress tracking, and full-text search. The tool is available in various forms including web apps, VS Code extensions, and IntelliJ plugins, all designed for read-only access to OpenSpec content without server deployment or authentication.

## What's Changed

- **Changes shared across git worktrees no longer show up multiple times (Web and VS Code).** When you work in several worktrees of one repo, each inherits a copy of every open change; spek was listing every copy, cluttering the Changes list and the dependency Graph, and inflating each spec's fan-in count in the graph. It now shows one entry per change — the copy from the worktree actually editing it — decided from git history (which worktree has advanced the change past the main worktree) rather than file timestamps as the primary signal; timestamps now only break a tie between copies that have *both* genuinely advanced. Because a fresh worktree rewrites every file's timestamp on checkout, the old timestamp-first guess could pick an idle, never-touched copy and make an in-progress change look reset to zero; that no longer happens. Thanks to [@david-lutz](https://github.com/david-lutz) (David Lutz) for contributing this.

  **Note:** the IntelliJ plugin has its own copy of the scanning logic and is not fixed by this release — changes still appear once per worktree there.

Also in this release: [`@spekjs/core@1.1.2`](https://www.npmjs.com/package/@spekjs/core/v/1.1.2) ships the same fix to API consumers.
