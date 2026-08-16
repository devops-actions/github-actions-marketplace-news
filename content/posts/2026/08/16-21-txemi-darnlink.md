---
title: darnlink — self-healing Markdown links
date: 2026-08-16 21:59:50 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.23.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `darnlink` GitHub Action automates the task of automatically healing Markdown links in a documentation folder after refactoring or moving files and folders. It uses deterministic, self-healing logic to ensure that links remain valid even when their targets are relocated or renamed. The action supports both local and cross-repo web links and can be used via the command line with minimal setup.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.23.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

The `darnlink` GitHub Action automates the task of automatically healing Markdown links in a documentation folder after refactoring or moving files and folders. It uses deterministic, self-healing logic to ensure that links remain valid even when their targets are relocated or renamed. The action supports both local and cross-repo web links and can be used via the command line with minimal setup.

## What's Changed

## Moving your pin: two things change, neither is a regression

**1. The file count can go DOWN, and that is the fix** (#85). A symlink to a `.md` **inside** the
scanned root used to be walked as a second document. Measured on a real repo the day this shipped:
**3534 → 3533** files — one symlink that had been indexed twice. Nothing was lost; a duplicate
stopped being counted.

**2. A new category appears in the output**, text and JSON alike: `[out-of-root-link]` /
`out_of_root_links` (a symlink whose target falls outside the scanned root). It is **informational
and does not move the exit code**. Anyone parsing CLI output line by line should expect it.

Nothing else here changes behaviour for a consumer: #83 (`absolute_local_path`) is report-only and
deliberately absent from the exit code, and the `darnlang` bumps only affect this repo's own CI.

## What #85 actually fixes

Sharing one instruction file across agents — `AGENTS.md`, `.github/copilot-instructions.md` and
`CLAUDE.md` pointing at a single source, which is standard practice — made the same `uuid` appear at
three paths, so the integrity check failed with *"uuid in multiple files"*. Measured on a real repo
on 2026-08-16, where it turned the gate red and **blocked every push** until the links were reverted.

Files are deduplicated by resolved path now, and the **canonical** path is the one reported. That
second half matters: relative links in a body resolve against the directory of the file they were
read from, so reporting `.github/copilot-instructions.md` made a body link look broken and `repair`
wanted to rewrite it. Otherwise walk order would decide which name wins.

## ⚠️ This release also corrects a defect in v0.22.0's notes

The BOM fix (#68) and the balanced-parentheses fix (#71) were documented under `v0.22.0` but merged
**hours after that tag was cut** — `git tag --contains` on either commit returns nothing. If you are
pinned at `v0.22.0`, you never received them despite the notes saying otherwise. **They ship here.**
Both entries moved to `[0.23.0]` in the changelog, with a note left behind under `[0.22.0]` rather
than deleting the claim silently.

## The 11 commits

| PR | What |
|---|---|
| #85 | symlink dedup — the headline |
| #84 | `AGENTS.md` / `copilot-instructions.md` as symlinks (the layout that exposed #85) |
| #83 | `absolute_local_path` is a named finding now, not an unchecked blind spot |
| #82 #81 #80 #78 | `darnlang` `v0.4.0` → `v0.9.1`, baseline reseeded |
| #79 #72 | the pin lives in one place; the shipped CI examples had rotted (one was 23 releases stale) |
| #76 | `--write` no longer deletes a UTF-8 BOM (#68) |
| #75 | balanced parentheses in a destination no longer truncated (#71) |

Full detail in [CHANGELOG.md](https://github.com/txemi/darnlink/blob/v0.23.0/CHANGELOG.md).
