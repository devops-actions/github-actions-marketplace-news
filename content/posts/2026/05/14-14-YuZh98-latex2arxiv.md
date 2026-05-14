---
title: latex2arxiv pre-flight
date: 2026-05-14 14:36:17 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v0.10.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v0.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

The `latex2arxiv` GitHub Action simplifies the process of preparing and submitting LaTeX projects to arXiv by automating project cleanup, error detection, and submission guidance. It eliminates unnecessary files, resolves common rejection-causing issues (e.g., incompatible packages, oversized files), and generates an arXiv-ready ZIP file along with a step-by-step upload guide. This tool is particularly useful for first-time submitters, Overleaf users, or teams aiming to ensure arXiv compliance through continuous integration.

## What's Changed


### Added
- **`--guide` flag**: writes a detailed `*_UPLOAD_GUIDE.txt` alongside the output zip with copy-paste-ready metadata (title, authors, abstract, page/figure/table counts) and a step-by-step arXiv upload walkthrough (#116)
- **Always-on upload summary**: after every successful conversion, prints extracted title, authors, abstract snippet, and figure/table counts to stdout
- **Page count**: when `--compile` is used, the compiled PDF's page count is included in the summary and guide
- **Undefined citation warning**: detects `\cite{key}` references not found in any kept `.bib` or `.bbl` file after cleaning
- **`.sty`/`.cls` advisory**: warns that arXiv may suggest removing custom style files — tells users to ignore that and keep them

### Improved
- **Author extraction**: handles `\thanks{...}` stripping, `\\`-separated authors with affiliations, multiple `\author{}` commands, and `\and` separators
- **Figure/table counting**: scans all `.tex` files in the output (not just main), counts `figure*`/`table*` starred variants

---
