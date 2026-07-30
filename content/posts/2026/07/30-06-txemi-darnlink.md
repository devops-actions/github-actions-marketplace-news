---
title: darnlink — self-healing Markdown links
date: 2026-07-30 06:45:19 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.18.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `darnlink` is a tool designed to automatically repair and protect Markdown links in documentation files, even after moving or renaming files. It ensures that links remain valid by embedding the file's UUID into the link text and adding an invisible comment with the same UUID at the source location. The tool supports both local and cross-repo web links and provides commands for dry-run simulations and actual application of changes.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.18.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

`darnlink` is a tool designed to automatically repair and protect Markdown links in documentation files, even after moving or renaming files. It ensures that links remain valid by embedding the file's UUID into the link text and adding an invisible comment with the same UUID at the source location. The tool supports both local and cross-repo web links and provides commands for dry-run simulations and actual application of changes.

## What's Changed

## Added

- **Reusable GitHub Action** — adopt darnlink in any repo's CI in one line:

  ```yaml
  - uses: txemi/darnlink@v1
    with:
      path: docs
  ```

  Composite action wrapping `uvx darnlink`: report-only by default (fails the build if a UUID-anchored Markdown link needs repair). Inputs: `path`, `args` (e.g. `--robustify` for fail-closed strict mode, `--write` to auto-repair), `version` (pin darnlink from PyPI). Mirrors the existing pre-commit hook — one-line adoption for the GitHub CI ecosystem too.

Full changelog: https://github.com/txemi/darnlink/blob/main/CHANGELOG.md
