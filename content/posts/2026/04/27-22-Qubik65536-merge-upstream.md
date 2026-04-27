---
title: Merge Upstream (Cubik65536s Fork)
date: 2026-04-27 22:02:45 +00:00
tags:
  - Qubik65536
  - GitHub Actions
draft: false
repo: https://github.com/Qubik65536/merge-upstream
marketplace: https://github.com/marketplace/actions/merge-upstream-cubik65536-s-fork
version: v1.2-rc
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/Qubik65536/merge-upstream** to version **v1.2-rc**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/merge-upstream-cubik65536-s-fork) to find the latest changes.

## Action Summary

**Summary:**  
The "Merge Upstream" GitHub Action automates the process of merging changes from a specified branch in an upstream public repository into a branch in the current repository using fast-forward merges. It simplifies the task of keeping a forked repository up-to-date with its source repository or synchronizing changes between branches. This action supports scheduled and manual triggers, enabling users to streamline their workflows for repository updates.

## What's Changed

- Always prefer the version on the downstream branch when merge (768c474)
- Update action.yml (9c056ac)
- Not fast-forward (solution by @RekGRpth) (3e32aa9)
- Update action.yml (fd10765)
- Remove --ff-only (16ca7d9)
- docs: using token and multiple branch merge (f319e34)
- feat: add Personal access token (PAT) (16b9d7e)
- ci: add semantic-release workflow (741e3c2)
- feat: Able to set upstream and origin branch (814b20b)
- feat: Change to using composite run instead of Docker (175997d)
