---
title: Create Commit By GitHub API
date: 2026-01-09 21:20:01 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/commit-action
marketplace: https://github.com/marketplace/actions/create-commit-by-github-api
version: v0.1.0
dependentsNumber: "27"
---


Version updated for **https://github.com/suzuki-shunsuke/commit-action** to version **v0.1.0**.
- This action is used across all versions by **27** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-commit-by-github-api) to find the latest changes.

## Action Summary

The `commit-action` GitHub Action automates the process of creating and pushing verified commits to remote branches using the GitHub API, eliminating the need for managing GPG or SSH keys. It addresses the challenge of securely automating commit signing by leveraging GitHub tokens or GitHub App access tokens. This action is ideal for workflows that require verified commits, ensuring enhanced security and seamless integration with GitHub repositories.

## Release notes

[Issues](https://github.com/suzuki-shunsuke/commit-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.1.0) | [Pull Requests](https://github.com/suzuki-shunsuke/commit-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.1.0) | https://github.com/suzuki-shunsuke/commit-action/compare/v0.0.14...v0.1.0 | [Base revision](https://github.com/suzuki-shunsuke/commit-action/tree/242446f3e980ec8fd9190adb3aa1ce25ca9d375b)

## ⚠️ Breaking Changes

#257 The way to list committed files is changed.

Before:

If `files` is set, `git ls-files` isn't run.

After:

If `files` is set, it's used as arguments of `git ls-files`. If `list_files_by_git` is set to `false`, the behaviour is kept.

## Features

#257 Allowing directories to be used in `files`.
Previously, the action failed if directories were used in `files`.

```
Error: EISDIR: illegal operation on a directory, read
```

#249 Add Outputs to action.yaml @smashedr

Added the outputs to the action.yaml for schema validation.

![idea64-20260105-122734426](https://github.com/user-attachments/assets/af385048-38af-42b2-846d-07326610cb8e)

## Security

#256 Mask a GitHub Access Token

## 🐛 Bug Fixes

#251 https://github.com/suzuki-shunsuke/commit-ts/pull/174 Preserve executable file mode

## Others

#251 https://github.com/suzuki-shunsuke/commit-ts/pull/179 Add info logs
