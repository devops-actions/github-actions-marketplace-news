---
title: latex2arxiv pre-flight
date: 2026-05-25 06:29:40 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

This GitHub Action, **latex2arxiv**, streamlines the process of preparing and submitting LaTeX projects to arXiv. It automates project cleanup by removing unnecessary files, stripping problematic elements from `.tex` sources, and flagging potential submission errors that could lead to rejection. Additionally, it generates a submission-ready `.zip` file and provides step-by-step upload instructions, solving common challenges for first-time arXiv submitters and simplifying workflows for Overleaf users and continuous integration setups.

## What's Changed


Closes four pre-flight coverage gaps surfaced by the BDD wiring pass: each was a documented arXiv requirement that earlier code did not enforce.

### Fixed
- Pre-flight: `\usepackage{fontspec}` / `unicode-math` error suppressed when a `00README` declares `compiler: xelatex` (or legacy `00README.XXX` with `xelatex` / `lualatex`) — matches the directive the error message itself recommends (#174)
- Pre-flight: warn when the main `.tex` is shipped under a structural sub-directory (`src/`, `sources/`, `source/`, `latex/`, `tex/`, case-insensitive). Previously the auto-unwrap of a single top-level dir silently flattened such layouts and the "compiles from root" warn never fired (#174)
- Pre-flight: shipped `psfig.sty` now errors at any depth in the input — previously only flagged when the file was referenced and survived the keep/prune step. New pre-prune `_check_archive_layout` scans the full extracted tree (#174)
- Pre-flight: hidden files / dot-directories now warn at any depth — same pre-prune scan; previously dropped before the check could fire (#174)
