---
title: ifttt-lint
date: 2026-05-29 22:47:01 +00:00
tags:
  - simonepri
  - GitHub Actions
draft: false
repo: https://github.com/simonepri/ifttt-lint
marketplace: https://github.com/marketplace/actions/ifttt-lint
version: v0.10.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/simonepri/ifttt-lint** to version **v0.10.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ifttt-lint) to find the latest changes.

## Action Summary

The `ifttt-lint` GitHub Action helps prevent cross-file inconsistencies by enforcing synchronization between co-dependent files using `LINT.IfChange` and `LINT.ThenChange` comment directives. It automates the detection of changes in one file that require corresponding updates in related files, reducing the risk of errors reaching production. Key capabilities include validation of co-dependent updates on pull requests, full-repo structural scans, and support for suppression mechanisms, ensuring consistent and predictable file synchronization.

## What's Changed

- chore: release v0.10.5 (#29) (bfaec4d)
- feat(jj): add Jujutsu VCS backend (#32) (1a190d4)
- ci: switch CodSpeed to simulation mode (#31) (83b4f20)
- refactor: share VCS-agnostic helpers between backends (#30) (4bc8dc9)
- refactor: extract NoneVcsProvider for disk-only operations (#28) (ae0aa60)
- chore: release v0.10.4 (#27) (79d3165)
- fix: skip binary file entries in diff parsing (#26) (5e531d2)
- chore: release v0.10.3 (#25) (1a20dd4)
- fix: skip submodule gitlinks in diff validation (#24) (c835f49)
- chore: release v0.10.2 (#23) (3d41bd0)
