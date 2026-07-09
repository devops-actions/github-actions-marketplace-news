---
title: latex2arxiv pre-flight
date: 2026-07-09 06:50:47 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## What's Changed


### Added
- Pre-flight warns when a shipped `.bbl` has a bbl format version arXiv won't accept (3.2 needs the soon-to-retire TL2023; anything else needs regeneration), when a BibTeX-format `.bbl` is paired with a biblatex document, and when a bundled `biblatex.sty` is included in the submission

### Changed
- Citation scan now recognizes the biblatex cite families (`\autocite`, `\parencite`, `\textcite`, `\footcite`, `\nocite`, capitalized and multicite forms) and pre/post-note optional arguments; the undefined-citation check reads biblatex-format `.bbl` files (`\entry{...}`) in addition to `\bibitem`

### Fixed
- `\addbibresource[options]{...}` is now recognized by dependency tracking, pre-flight, and the `--compile` biber dispatch; the functional biblatex `keywords` field is no longer stripped from `.bib` files in biblatex projects
- VS Code extension (0.1.2): the new biblatex pre-flight warnings are located in the editor — `.bbl` format/backend warns anchor the `.bbl` file itself, the bundled-`biblatex.sty` warn anchors the `.sty`
- Dependency tracking resolves `\input`/`\include` in nested files against the compile root (LaTeX semantics) and keeps non-`.tex` targets such as `.pgf` figures; both were previously pruned from the output (#229)
- Custom config rules no longer match longer commands sharing a prefix (an `hl` rule used to corrupt `\hline`) (#229)
- The hidden-file pre-flight warning is emitted once per dot-directory instead of once per contained file (#229)
