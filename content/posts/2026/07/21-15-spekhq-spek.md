---
title: spek - OpenSpec Static Site
date: 2026-07-21 15:00:52 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.9.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**: spek is a lightweight, read-only viewer for OpenSpec content that provides a structured browsing interface with features such as BDD syntax highlighting, task progress tracking, and full-text search. It allows users to view specs, changes, and tasks in one place, aggregating worktrees of a repository into a single view for better visibility.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

**Summary**: spek is a lightweight, read-only viewer for OpenSpec content that provides a structured browsing interface with features such as BDD syntax highlighting, task progress tracking, and full-text search. It allows users to view specs, changes, and tasks in one place, aggregating worktrees of a repository into a single view for better visibility.

## What's Changed


**Highlight: Jujutsu (jj) workspace aggregation (experimental)** — spek can now see OpenSpec changes in jj workspaces, not just git worktrees. In a colocated git+jj repo, jj workspaces are invisible to `git worktree list`, so changes authored there used to be silently missed. This is **experimental and off by default** — enable it to opt in. Thanks to [@DannyGoodall](https://github.com/DannyGoodall) (Danny Goodall) for contributing this.

- When enabled, and a repo has jj initialised and the `jj` CLI is available, spek also discovers OpenSpec changes in every jj workspace and merges them into the same aggregated view as git worktrees
- The colocated main directory (both a git worktree and the jj `default` workspace) is deduplicated by path, so it is never double-counted
- Because jj workspaces share one commit graph (each materialises the full trunk), a shared change would otherwise appear once per workspace; jj changes are deduplicated by content, so a shared change is shown once. A workspace that has diverged on a change keeps its own entry, flagged "conflicts with &lt;base&gt;" (and "editing" if it's the `@` change)
- This runs **alongside, and separately from**, the git-worktree deduplication added in 1.8.1. jj workspaces are invisible to git and their working-copy commit isn't a git ref, so they can't use git's history-based election; they get their own content-fingerprint path instead. Git-worktree behaviour is unchanged
- Opt in via the VS Code setting `spek.aggregateJjWorkspaces` (**experimental, off by default**) or the Web aggregation control's "Worktrees + jj" option — independent of git worktree aggregation
- Degrades gracefully: when disabled, or `jj` is not installed, or the repo is not a jj repo, behaviour is identical to before — `jj` is never required
- Supported in the Web version and the VS Code extension (IntelliJ and Demo are unchanged)

**The aggregation scope is now one control in the app header (Web and VS Code).** It used to be a checkbox on the Changes page, which meant it only existed on that page even though it changes what the Dashboard, Graph and Timeline show as well. It is now a single control in the header — `Current dir` / `Worktrees` / `Worktrees + jj` — visible from every page, and it appears only when there is more than one working copy to aggregate.

- The three states are mutually exclusive, so the meaningless combination "don't aggregate, but do include jj" can no longer be selected. The `Worktrees + jj` option is offered only when a jj workspace is actually detected
- In VS Code the control writes the settings, not a hidden preference: it edits `spek.aggregateWorktrees` and `spek.aggregateJjWorkspaces` in your workspace `settings.json` (and editing those settings by hand updates the control). `spek.aggregateWorktrees` is new — worktree aggregation was previously not configurable there. On the Web the choice is remembered in the browser
- The IntelliJ plugin does not aggregate, so no control is shown there


