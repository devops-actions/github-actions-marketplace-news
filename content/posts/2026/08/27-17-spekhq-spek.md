---
title: spek - OpenSpec Static Site
date: 2026-08-27 17:41:04 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.16.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **spek** is an open-source tool that provides a read-only, local interface for browsing OpenSpec content. It automates the process of viewing specs, tracking changes, and managing tasks within a repository. The action offers features such as a dashboard overview, spec and change browsers with BDD syntax highlighting, task progress indicators, full-text search capabilities, and support for worktree aggregation.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.16.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

**spek** is an open-source tool that provides a read-only, local interface for browsing OpenSpec content. It automates the process of viewing specs, tracking changes, and managing tasks within a repository. The action offers features such as a dashboard overview, spec and change browsers with BDD syntax highlighting, task progress indicators, full-text search capabilities, and support for worktree aggregation.

## What's Changed

**Highlight: a change's non-Markdown artifacts are visible.** A schema sets each artifact's filename through `generates:`, and not every artifact is Markdown — `event-driven` requires `asyncapi.yaml`. spek discovered only root `*.md` and the `specs/` tree, so such a change rendered every tab except the one its schema asks for.

- **Root `.yaml` / `.yml` / `.json` files are artifacts**, shown as syntax-highlighted text. The tab is named for the file's stem with a format badge, using the full filename only when a Markdown artifact shares it. Thanks to [@nthansen](https://github.com/nthansen) (Norman Hansen) ([#50](https://github.com/spekhq/spek/pull/50))
- **They sort into their schema position**, count in the change-list badge, are reachable by search, and refresh live on edit — on every surface
- **Discovery stays root-only and skips dotfiles**, so `.openspec.yaml` and subdirectory files never become tabs
- **Code fences in `proposal.md` / `design.md` are highlighted too.** A fence with no language stays plain
- *Internal:* `@spekjs/core` 1.11.0 adds the `"data"` kind and the shared file listing behind count, search and discovery

