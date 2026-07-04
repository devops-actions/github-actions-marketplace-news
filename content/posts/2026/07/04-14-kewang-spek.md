---
title: spek - OpenSpec Static Site
date: 2026-07-04 14:32:58 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.3.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.3.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## What's Changed

- Fix: the IntelliJ plugin now installs on IntelliJ Platform 2026.1 (build 261.x) and newer — the `until-build` upper bound (`253.*`) that caused "requires IDE build 253.* or earlier" has been removed, so the plugin tracks current and future IDE releases (#4)
- Update the published `kewang/spek` GitHub Action off the deprecated Node 20 runtime — bump `actions/checkout` to v7, `actions/setup-node` to v6, and `actions/cache` to v6; internal CI workflows and README examples updated to match (#7)
