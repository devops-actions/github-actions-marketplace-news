---
title: Hugging Repo
date: 2025-11-17 13:07:14 +00:00
tags:
  - sachnun
  - GitHub Actions
draft: false
repo: https://github.com/sachnun/hugging-repo
marketplace: https://github.com/marketplace/actions/hugging-repo
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/sachnun/hugging-repo** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hugging-repo) to find the latest changes.

## Release notes

## Features

- Auto-detect Docker SDK when Dockerfile exists in repository
- Add comprehensive test suite with 27 automated tests
- Add GitHub Actions summary output for test results

## Breaking Changes

- Renamed input parameter `huggingface_repo` to `hf_repo`

## Migration

Update your workflow files:

```diff
- huggingface_repo: 'my-repo'
+ hf_repo: 'my-repo'
```

All other parameters remain unchanged.
