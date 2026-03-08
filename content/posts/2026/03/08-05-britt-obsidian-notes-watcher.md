---
title: Note Watcher
date: 2026-03-08 05:50:34 +00:00
tags:
  - britt
  - GitHub Actions
draft: false
repo: https://github.com/britt/obsidian-notes-watcher
marketplace: https://github.com/marketplace/actions/note-watcher
version: v0.3.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/britt/obsidian-notes-watcher** to version **v0.3.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/note-watcher) to find the latest changes.

## Action Summary

Note Watcher is a GitHub Action and file-watching tool designed for managing and automating tasks within Obsidian markdown notes stored in a Git repository. It detects `@` mentions in notes, dispatches corresponding instructions to configured agents, and processes changes such as file edits, note creation, or content reorganization, with all modifications committed back to Git. This action streamlines note management by automating repetitive tasks and enabling dynamic updates to notes through customizable agent behaviors.

## Release notes

### Fixed
- Action now runs `git pull --rebase` before pushing, preventing failures when vault backup commits land during processing
