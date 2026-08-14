---
title: spek - OpenSpec Static Site
date: 2026-08-14 22:20:56 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.14.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  spek is a lightweight tool that provides a structured browsing interface for OpenSpec content, including specs, changes, and tasks. It allows users to navigate through OpenSpec content in an interactive, BDD syntax-highlighted format, with features such as task progress tracking, full-text search, and responsive layout.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.14.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

spek is a lightweight tool that provides a structured browsing interface for OpenSpec content, including specs, changes, and tasks. It allows users to navigate through OpenSpec content in an interactive, BDD syntax-highlighted format, with features such as task progress tracking, full-text search, and responsive layout.

## What's Changed

**Highlight: the light theme is readable.** It was never opt-in — `prefers-color-scheme` on the web, VS Code's theme, IntelliJ's — so it is what a reader gets rather than a mode they chose, and nearly every colour in it failed WCAG AA. An error message measured 2.76:1; the spec diff's added lines 1.70:1, sitting directly beside removed lines that were merely bad. The dark theme was audited on the same terms rather than assumed sound, and carried two failures of its own.

- **Error, success and warning colours are now defined per theme.** Each was one Tailwind shade applied to both, and no 400 shade in any family reaches even 3:1 on a light background — the spec diff's added and removed lines, every page's error message, the repo picker's detection states and the jj conflict badge all failed there
- **Secondary text is readable in both themes.** Timestamps, counts, empty states and the labels beside them measured 2.34:1 light and 3.54:1 dark
- **Links, the active sidebar item and search highlighting** take a deeper amber in the light theme. The previous one was 3.04:1 as plain text and 3.50:1 where a search hit sits on a tint of it — that tint, not the link, is what set the new value
- **A completed task no longer fades its own links and code spans.** The row carried 60% opacity, which composites everything beneath it: its body text measured 3.24:1 dark and 2.77:1 light, and no colour could have compensated because the fading happens after the colour is chosen. Completion is marked by colour now, with the strikethrough and checkmark unchanged
- **The task progress bar's complete state is distinguishable from its track** — 2.02:1 before, in the light theme
- **The graph and the timeline follow the theme.** Node fills, legend swatches and the archived timeline bars were hard-coded colours no theme could reach: the graph's spec nodes measured 1.85:1 on a light page, and its archived nodes 2.93:1 in the *dark* one, because that colour was a copy of a token that had since been corrected. Edges were drawn in the panel-border colour, which is 1.22:1 at full strength and cannot be seen at any opacity
- **Graph labels stay readable where they overlap a node**, and the timeline's "today" marker and both bar states are drawn at full strength instead of faded
- **A CLI failure is no longer remembered for the full cache window.** An unreachable `openspec` binary meant 30 seconds of "unavailable" even after `PATH` was fixed; a failure that resolves is now retried on the next read, while one the installed CLI reproduces identically is still cached ([#46](https://github.com/spekhq/spek/issues/46))
- **Building from source works on Windows.** `@spekjs/core` and `@spekjs/ui` used Unix-only `rm -rf` / `cp` in their build scripts, so `npm run build` failed under `cmd.exe`. Thanks to [@nthansen](https://github.com/nthansen) (Norman Hansen) ([#47](https://github.com/spekhq/spek/pull/47))

