---
title: Update uv.lock
date: 2026-01-17 21:25:29 +00:00
tags:
  - abhsheksingh
  - GitHub Actions
draft: false
repo: https://github.com/abhsheksingh/update-uv-lock
marketplace: https://github.com/marketplace/actions/update-uv-lock
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/abhsheksingh/update-uv-lock** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-uv-lock) to find the latest changes.

## Action Summary

The **Update uv.lock Action** automates the process of regenerating the `uv.lock` file in a repository whenever changes are made to `pyproject.toml` or dependencies during a pull request. It ensures that the `uv.lock` file is always up-to-date by detecting differences, regenerating the file, and automatically committing the changes to the branch. This action simplifies dependency management and reduces manual effort in maintaining consistent lock files.

## Release notes

# Update uv.lock Action

Regenerates `uv.lock` and pushes the change to the current branch if it differs.

## Inputs
- `python-version` (default `3.10.7`)
- `repository` (required) – e.g., `your-org/your-repo`
- `ref` (required) – e.g., `${{ github.event.pull_request.head.ref }}`
- `workdir` (default `.`)

## Example (on PR)
```yaml
- uses: abhsheksingh/update-uv-lock@v1
  with:
    python-version: '3.10.7'
    repository: ${{ github.event.pull_request.head.repo.full_name }}
    ref: ${{ github.event.pull_request.head.ref }}
    workdir: '.'
```
## Use it in your target repo (one‑liner in a PR workflow)
Create or update a workflow in the repository where you want to auto‑refresh uv.lock on PRs:
.github/workflows/refresh-uv-lock.yml
```yaml

name: Refresh uv.lock on PR

on:
  pull_request:
    types: [opened, synchronize, reopened]

permissions:
  contents: write
  pull-requests: write

jobs:
  refresh-uv-lock:
    runs-on: ubuntu-latest
    if: ${{ github.event.pull_request.head.repo.full_name == github.repository }}
    steps:
      - uses: abhsheksingh/update-uv-lock@v1
        with:
          python-version: '3.10.7'
          repository: ${{ github.event.pull_request.head.repo.full_name }}
          ref: ${{ github.event.pull_request.head.ref }}
          workdir: '.'

```
## Test

Open a PR that changes `pyproject.toml` or dependencies; the workflow will run and, if `uv.lock` changes, you’ll see an extra commit pushed by `github-actions`.


