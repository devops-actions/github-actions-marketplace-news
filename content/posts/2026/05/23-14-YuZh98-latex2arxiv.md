---
title: latex2arxiv pre-flight
date: 2026-05-23 14:10:10 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

`latex2arxiv` is a GitHub Action and command-line tool designed to simplify the process of preparing LaTeX papers for submission to arXiv. It automates project cleanup by pruning unnecessary files, sanitizing `.tex` files, and identifying potential submission issues, such as problematic packages or missing dependencies. Additionally, it generates an arXiv-ready `.zip` file and provides step-by-step guidance for the upload process, making it particularly useful for first-time submitters, Overleaf users, and CI integrations.

## What's Changed


GitHub Action surfaces `--flatten` and `--resize`; CI gains a macOS test matrix; publish pipeline binds to a protected `pypi` GitHub Environment. Repo adds a Code of Conduct.

### Added
- GitHub Action: `flatten` and `resize` inputs forward to CLI (#155)
- CI: macOS test matrix coverage (#155)
- `CODE_OF_CONDUCT.md` (#154)
- JSON schema: document `metadata` field (#152)

### Changed
- `publish.yml`: bind publish job to `pypi` GitHub Environment; strip trailing `---` from CHANGELOG-extracted release notes (#155)
- `SECURITY.md`: vulnerability-report email switched to public alias (#151)
