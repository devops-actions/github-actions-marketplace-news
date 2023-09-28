---
title: Git Repo Mirroring
date: 2023-09-28 11:01:54 +00:00
tags:
  - shashinma
  - GitHub Actions
draft: false
repo: shashinma/git-repo-mirror
marketplace: https://github.com/marketplace/actions/git-repo-mirroring
version: v1.0.0
dependentsNumber: "5"
---


Version updated for **shashinma/git-repo-mirror** to version **v1.0.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-repo-mirroring) to find the latest changes.

## Release notes

# Git Repository Mirroring

Git Repo Mirroring enables you to synchronize code to other code management platforms, such as GitLab, Gitee, etc.

## Try Git Repository Mirroring

You can use the following example as a template to create a new file with any name under `.github/workflows/`.

```yaml
name: <action-name>

on: 
  - push
  - delete

jobs:
  sync:
    runs-on: ubuntu-latest
    name: Git Repo Sync
    steps:
    - uses: actions/checkout@v4
      with:
        fetch-depth: 0
    - uses: shashinma/git-repo-mirror
      with:
        # Such as https://github.com/shashinma/git-repo-mirror.git
        target-url: <target-url>
        # Such as shashinma
        target-username: <target-username>
        # You can store token in your project's 'Setting > Secrets' and reference the name here. Such as ${{ secrets.ACCESS_TOKEN }}
        target-token: <target-token>
```

