---
title: Create Commit By GitHub API
date: 2026-04-26 06:13:01 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/commit-action
marketplace: https://github.com/marketplace/actions/create-commit-by-github-api
version: v1.0.0
dependentsNumber: "49"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/suzuki-shunsuke/commit-action** to version **v1.0.0**.

- This action is used across all versions by **49** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-commit-by-github-api) to find the latest changes.

## Action Summary

**commit-action** is a GitHub Action designed to automate the creation and pushing of **verified commits** directly to remote branches using the GitHub API, eliminating the need for GPG or SSH key management. It simplifies workflows by enabling secure, signed commits with a GitHub token or GitHub App installation access token, ensuring enhanced security and seamless integration with CI/CD pipelines. This action addresses common challenges like managing key-based authentication and ensures compatibility with GitHub's verified commit requirements.

## What's Changed

[Issues](https://github.com/suzuki-shunsuke/commit-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av1.0.0) | [Pull Requests](https://github.com/suzuki-shunsuke/commit-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av1.0.0) | https://github.com/suzuki-shunsuke/commit-action/compare/v0.1.2...v1.0.0 | [Base revision](https://github.com/suzuki-shunsuke/commit-action/tree/5e814e56419452ebd1b95996c7d26152ab5abe71)

## :warning: Breaking Changes

#367 Update Node.js to v24. Node.js v24 is required.

## Features

#370 Support empty commits

```yaml
- uses: suzuki-shunsuke/commit-action@latest
  with:
    empty_commit: true
```

#371 Support force push

```yaml
- uses: suzuki-shunsuke/commit-action@latest
  with:
    force_push: true
    parent_branch: main
```

#372 Support orphan branch

```yaml
- uses: suzuki-shunsuke/commit-action@latest
  with:
    branch: orphan-branch
    orphan: true
    # use_base_tree: false
```

#373 Revoke GitHub App token in main step instead of post step

- Security: Minimize the lifetime of the GitHub App installation access token. Revoke it as soon as it is no longer needed, rather than waiting for the post step.
- Simplicity: Remove the post-step round-trip (saving/loading state, re-invoking the bundle), reducing overhead and making the action's logs more linear and easier to follow.
