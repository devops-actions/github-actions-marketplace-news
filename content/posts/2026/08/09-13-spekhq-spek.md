---
title: spek - OpenSpec Static Site
date: 2026-08-09 13:47:59 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.11.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**: spek is a lightweight, read-only viewer for OpenSpec content that provides structured browsing with features such as BDD syntax highlighting, task progress tracking, and full-text search. It allows users to navigate through specs, changes, and tasks within a repository, including handling multiple worktrees efficiently.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

**Summary**: spek is a lightweight, read-only viewer for OpenSpec content that provides structured browsing with features such as BDD syntax highlighting, task progress tracking, and full-text search. It allows users to navigate through specs, changes, and tasks within a repository, including handling multiple worktrees efficiently.

## What's Changed

**Highlight: a spec opens as an outline with substance, instead of a wall of text.** Reported as "you are asked to read all these fine details, but you don't even really know the shape of the thing first" (issue #42, filed from the IntelliJ plugin).

- **Requirements and scenarios fold in place.** Each `### Requirement:` shows its heading *and* its lead SHALL paragraph; each `#### Scenario:` shows as a heading with its WHEN/THEN body collapsed. Scenario blocks are 59% of the character volume in this repo's own specs — so the first screen becomes a contents page that still says what each requirement requires, rather than a parallel index you have to leave the content to read. Expand all / Collapse all is available, and your choice is remembered
- **Find-in-page still finds folded text, and links still land.** Folding uses the browser's native disclosure elements rather than hiding content with CSS, so `Ctrl+F` reaches text inside a collapsed scenario. Navigating to a heading — from the table of contents, from a `#hash` on load, or from VS Code's navigate-to command — expands whatever encloses it before scrolling, so a link never arrives at something invisible
- **Folding applies only to spec-shaped content** — the spec detail page and a change's Specs tab. Proposal, design and other markdown artifacts render unfolded exactly as before
- **Every BDD keyword is legible in the light theme.** WHEN / THEN / SHALL and the rest were hard-coded to one set of colours shared by both themes, and against the light background all 8 failed WCAG AA — 7 below even 3:1, with `THEN` at **1.43:1**. The dark theme passed everywhere, which is why this went unseen. Light now has its own values in the same hue families, clearing AA at 5.17–6.47:1; dark is unchanged byte for byte, and no hue or pill fill moves on either theme
- **A highlighted keyword no longer renders lighter than the emphasis around it.** A keyword inside `**bold**` was drawn at a lower font weight than the bold text containing it
- *Internal:* the TypeScript and Kotlin task parsers are now verified against one shared fixture corpus, so a case added in one language is asserted by both from the next run. `@spekjs/core` also gained the artifact sort function that had been living in the web package

