---
title: astral-sh/setup-uv
date: 2024-11-29 00:57:13 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v4.1.0
dependentsNumber: "4,589"
---


Version updated for **astral-sh/setup-uv** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,589** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

You can now use the input `python-version` to set the environment variable `UV_PYTHON` for the rest of your workflow.
This will override any python version specifications in `pyproject.toml` and `.python-version`

```yaml
- name: Install the latest version of uv and set the python version to 3.12
  uses: astral-sh/setup-uv@v4
  with:
    python-version: "3.12"
```

You can combine this with a matrix to test multiple python versions:

```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        python-version: ["3.9", "3.10", "3.11", "3.12"]
    steps:
      - uses: actions/checkout@v4
      - name: Install the latest version of uv and set the python version
        uses: astral-sh/setup-uv@v4
        with:
          python-version: ${{ matrix.python-version }}
      - name: Test with python ${{ matrix.python-version }}
        run: uv run --frozen pytest
```

## 🚀 Enhancements

- Add input python-version @eifinger (#174)

## 🧰 Maintenance

- Reduce test matrices @eifinger (#173)
- chore: update known checksums for 0.5.5 @github-actions (#170)
- Speed up updating known checksums @eifinger (#166)

## 📚 Documentation

- Replace v3 with v4 in README.md @eifinger (#176)
- Add matrix example for python-version @eifinger (#175)
- Clarify caching will only fail when enabled and nothing to cache @eifinger (#165)

