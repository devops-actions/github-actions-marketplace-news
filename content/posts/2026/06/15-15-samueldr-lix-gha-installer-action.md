---
title: Lix GHA Installer Action
date: 2026-06-15 15:59:34 +00:00
tags:
  - samueldr
  - GitHub Actions
draft: false
repo: https://github.com/samueldr/lix-gha-installer-action
marketplace: https://github.com/marketplace/actions/lix-gha-installer-action
version: v2026-06-15
dependentsNumber: "100"
actionType: Composite
---


Version updated for **https://github.com/samueldr/lix-gha-installer-action** to version **v2026-06-15**.

- This action is used across all versions by **100** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lix-gha-installer-action) to find the latest changes.

## What's Changed

Two contributions this time around:

 - [A quick runtime check on setup](https://github.com/samueldr/lix-gha-installer-action/pull/19), which frontloads a trivial `nix-build` to make the action fail in a controlled manner when encountering a *wonky situation* (like in #17). This way it's obvious when things are failing not due to the action user's own code, but due to *some other wonkiness*. (@getchoo)
 - [A fix to the installer caching](https://github.com/samueldr/lix-gha-installer-action/pull/20). The caching implementation ended-up being incorrect, and the ETag check wouldn't *check*, so whichever installer package was cached was kept around for far longer than intended. (@lilyinstarlight)
