---
title: spek - OpenSpec Static Site
date: 2026-08-12 05:48:03 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.13.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  spek is a lightweight, read-only viewer for OpenSpec content. It automates the process of browsing, searching, and tracking BDD tasks within a local directory structure, providing a structured interface with features like BDD syntax highlighting, task progress tracking, and full-text search.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.13.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

spek is a lightweight, read-only viewer for OpenSpec content. It automates the process of browsing, searching, and tracking BDD tasks within a local directory structure, providing a structured interface with features like BDD syntax highlighting, task progress tracking, and full-text search.

## What's Changed

**Highlight: the rule beside an open section now starts and ends where its content does.** 1.13.0 gave each requirement its own rule and a gap between them, but the rule was drawn down the section's *box* — and a box holds two spaces its content does not. Reported from the IntelliJ tool window (issue #42), one round after the change that introduced the gap.

- **The rule starts at its heading, not 20px above it.** That space is also what separates a section from the one before it, so of the 28px between two requirements, 20px was drawn as rule — 1.13.0's gap was real but invisible, and a page of requirements still read as one interrupted line with a notch in it
- **And it ends at the last of its content**, instead of running past it. The trailing space below a section's last paragraph sits inside the box too, so the rule overshot the thing it was marking by a further 20px — plainest under the last scenario of a requirement
- **An open requirement's heading no longer sits 1px right of a closed one's.** The rule used to be a border, which inset everything inside an open section; drawn as its own element it does not. Headings and disclosure arrows now line up down the page regardless of open state
- **The rule stays visible in Windows high contrast**, where the previous drawing method would have been discarded
- A scenario written with no requirement above it now takes a top-level section's spacing, 4px lower than before: how much room a section leaves above its heading follows its nesting, not its heading level

