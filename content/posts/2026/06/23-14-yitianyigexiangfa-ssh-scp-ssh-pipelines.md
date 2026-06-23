---
title: ssh-scp-ssh-pipelines-action
date: 2026-06-23 14:57:19 +00:00
tags:
  - yitianyigexiangfa
  - GitHub Actions
draft: false
repo: https://github.com/yitianyigexiangfa/ssh-scp-ssh-pipelines
marketplace: https://github.com/marketplace/actions/ssh-scp-ssh-pipelines-action
version: v1.1.6
dependentsNumber: "24"
actionType: Docker
---


Version updated for **https://github.com/yitianyigexiangfa/ssh-scp-ssh-pipelines** to version **v1.1.6**.

- This action is used across all versions by **24** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssh-scp-ssh-pipelines-action) to find the latest changes.

## What's Changed

## Changes

- Upgrade `actions/checkout` in workflows to v5 (compatible with GitHub Actions Node.js 24)
- Update the Dockerfile version tag to v1.1.6
- Update the repository URL to `yitianyigexiangfa/ssh-scp-ssh-pipelines`

## Usage

```yaml
- uses: yitianyigexiangfa/ssh-scp-ssh-pipelines@v1.1.6
  with:
    host: ${{ secrets.HOST }}
    user: ${{ secrets.USER }}
    pass: ${{ secrets.PASS }}
    scp: |
      './dist/*' => /remote/path/
```
