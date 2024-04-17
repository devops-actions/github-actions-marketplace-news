---
title: UseUGit
date: 2024-04-17 03:31:12 +00:00
tags:
  - StartAutomating
  - GitHub Actions
draft: false
repo: StartAutomating/ugit
marketplace: https://github.com/marketplace/actions/useugit
version: v0.4.4
dependentsNumber: "?"
---


Version updated for **StartAutomating/ugit** to version **v0.4.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/useugit) to find the latest changes.

## Release notes

## ugit 0.4.4:

> Like It? [Star It](https://github.com/StartAutomating/ugit)
> Love It? [Support It](https://github.com/sponsors/StartAutomating)

* ugit a container! (#262, #263, #264)
  * `docker run --interactive --tty ghcr.io/startautomating/ugit`  
* `git checkout` improvements
  * `git checkout -PullRequest [int]` (#178)
  * `git checkout -NewBranchName [string]` (#266)
  * `git checkout -ResetBranchName [string]` (#267)
  * `git checkout -Detach [switch]` (#268)
  * `git checkout -ResetPath [string]` (#269)
  * `git checkout -FromBranch [string]` (#270)
  * `git checkout -RevisionNumber/-ParentNumber [int]` (#271)
* `git sparse-checkout` improvements
  * `git sparse-checkout -FileFilter [string[]]` ( Fixes #257 )
  * `git sparse-checkout -DirectoryFilter [string[]]` ( Fixes #258 )
* `git branch -Remote [switch]` (#185)
* `git config --list` outputs as objects (#265)
* `git --format json` outputs as objects (#239)

---

Additional Changes in [Changelog](https://github.com/StartAutomating/ugit/blob/main/CHANGELOG.md)
