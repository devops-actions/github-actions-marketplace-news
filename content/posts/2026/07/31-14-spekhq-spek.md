---
title: spek - OpenSpec Static Site
date: 2026-07-31 14:39:41 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.10.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**: **spek** is a lightweight, read-only viewer for OpenSpec content that allows users to browse specs, changes, and tasks with structured browsing, BDD syntax highlighting, task progress tracking, and full-text search. It provides features like a dashboard, specs browser, changes browser, worktree aggregation, timeline, and more, all in a local-only, read-only format.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

**Summary**: **spek** is a lightweight, read-only viewer for OpenSpec content that allows users to browse specs, changes, and tasks with structured browsing, BDD syntax highlighting, task progress tracking, and full-text search. It provides features like a dashboard, specs browser, changes browser, worktree aggregation, timeline, and more, all in a local-only, read-only format.

## What's Changed

**Highlight: the Tasks tab shows what your `tasks.md` actually says.** Two independent defects had made it the least faithful view in the app — one discarded content before it ever reached the UI, the other displayed what survived as literal source. Thanks to [@nthansen](https://github.com/nthansen) (Norman Hansen) for reporting and contributing both.

- **A task's continuation lines are no longer discarded.** Sub-bullets, explanatory paragraphs and code blocks written underneath a `- [ ]` item were dropped by the parser itself, so they were missing from the data rather than merely hidden by styling — no amount of scrolling, resizing or switching surface would reveal them. In this repo's own openspec that was 90 of 1137 tasks, each showing only its first line. They now display as the source describes
- **Task text renders as Markdown.** The Tasks tab was the one artifact view whose text never reached a Markdown parser, so `**bold**` appeared as four asterisks and `` `code` `` as backticks around the word. Inline formatting, links, nested lists and code blocks now render as they do on every other tab. Links open in a new tab, matching the rest of the viewer
- **A bullet at column 0 after a checkbox stays outside that task.** A plain `- Note: …` line following a `- [ ]` item is a separate bullet in Markdown, and is now shown as one instead of being absorbed into the task above it as a nested list. The same applies to a heading, blockquote, code fence, numbered item or `---` — indent any of them and it still belongs to the task, exactly as Markdown reads it
- **Progress counts, section grouping and the CI task badge are unchanged.** Only checkboxes at column 0 are counted, as before; an indented `- [ ]` belongs to its parent task's text and is not a task of its own. This was verified across every `tasks.md` in this repo — no progress bar or badge value moves

