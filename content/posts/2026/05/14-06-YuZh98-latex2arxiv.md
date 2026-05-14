---
title: latex2arxiv pre-flight
date: 2026-05-14 06:26:37 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v0.9.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v0.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

The `latex2arxiv` GitHub Action simplifies the process of preparing and submitting LaTeX projects to arXiv by automating common tasks such as cleaning project files, detecting submission-blocking errors, and generating an arXiv-ready ZIP package. It streamlines workflows for researchers by pruning unnecessary files, sanitizing LaTeX code, verifying compatibility with arXiv requirements, and providing step-by-step upload guidance, making the submission process faster and error-free.

## What's Changed


### Added
- **Homebrew tap**: `brew tap YuZh98/latex2arxiv && brew install latex2arxiv` — no Python toolchain required (#100)
- Automated Homebrew formula bump: publish workflow fetches new sdist metadata from PyPI and pushes a bump commit to the tap repo (#102)
- `--version` flag: prints `latex2arxiv <version>` and exits 0 (#106)
- `--json` flag: machine-readable JSON summary on stdout; progress routed to stderr. Fatal errors still produce a JSON envelope. Schema: `docs/json-schema.md` (#107)
- `--flatten` flag: inlines every `\input` / `\include` / `\subfile` into the main `.tex` for single-file output. `\include` preserves `\clearpage` semantics; `\subfile` preamble is stripped; cycles and missing files are flagged. Details: `docs/flatten.md` (#108)

### Changed
- `convert()` raises `ConverterError` on fatal failures instead of calling `sys.exit(1)`, enabling the `--json` envelope and cleaner MCP server error handling (#107)

### Fixed
- `--json` fatal-error envelopes (e.g. zip-slip rejection) now populate `input` and `sizes.input_bytes` from the as-passed input file when it exists on disk, instead of all-null fields (#111)

---
