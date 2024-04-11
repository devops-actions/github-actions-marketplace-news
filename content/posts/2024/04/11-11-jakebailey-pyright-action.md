---
title: Run pyright
date: 2024-04-11 11:15:29 +00:00
tags:
  - jakebailey
  - GitHub Actions
draft: false
repo: jakebailey/pyright-action
marketplace: https://github.com/marketplace/actions/run-pyright
version: v2.3.0
dependentsNumber: "833"
---


Version updated for **jakebailey/pyright-action** to version **v2.3.0**.
- This action is used across all versions by **833** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-pyright) to find the latest changes.

## Release notes

This version adds support for `version: PATH`; this configures `pyright-action` to use `pyright` from `$PATH`, which may be more convenient if you are already installing `pyright` via something like the PyPI package. For example:

```yaml
- run: |
    python -m venv .venv
    source .venv/bin/activate
    pip install -r dev-requirements.txt # includes pyright
- run: echo "$PWD/.venv/bin" >> $GITHUB_PATH

- uses: jakebailey/pyright-action@v2
  with:
    version: PATH
```
 
* Add "version: PATH" to pull pyright from $PATH (#107) (32e0647)
* Update github actions (#101) (a9434fd)
* Fix lint (707ce89)
* Update deps (bccc3d9)
* Add missing tests for annotate true/false (8b68a7a)
* Update deps (ab0f126)
* Update cache task (fc12414)
* Fix node version (2ed5847)
* Fix format (1fd21a9)
* Switch to pnpm (12ac4be)
* Revert dist change (f6e3b60)
* Per step (41399fd)
* set defaults (61508a3)
* Pull workflow setup into shared composite action (a3a6fba)
* Update deps (55d1f64)
