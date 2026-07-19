---
title: embd-check
date: 2026-07-19 06:33:44 +00:00
tags:
  - ptsouchlos
  - GitHub Actions
draft: false
repo: https://github.com/ptsouchlos/embd
marketplace: https://github.com/marketplace/actions/embd-check
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `embd` is a CLI tool designed to manage embedded repositories within a project, providing an alternative to `git subtree` and `git submodule`. It automates the process of cloning and updating dependencies, while also allowing for selective filtering of content. This helps in maintaining clear separation between project code and its dependencies and ensures that all changes are tracked in version control. The tool is particularly useful for managing Git submodules within larger projects to improve maintainability and simplify deployment processes.
---


Version updated for **https://github.com/ptsouchlos/embd** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/embd-check) to find the latest changes.

## Action Summary

`embd` is a CLI tool designed to manage embedded repositories within a project, providing an alternative to `git subtree` and `git submodule`. It automates the process of cloning and updating dependencies, while also allowing for selective filtering of content. This helps in maintaining clear separation between project code and its dependencies and ensures that all changes are tracked in version control. The tool is particularly useful for managing Git submodules within larger projects to improve maintainability and simplify deployment processes.

## What's Changed

- chore: prepare for new release (c82367c)
- fix: wrong names (4dc1a80)
- fix: use corrected gh action name (652d0f3)
- chore: add another check to use published gh action (d47f827)
- chore: update actions.yaml to allow for publishing (9a67f30)
- feat: first pass at a github action (#36) (39558e7)
- fix: wrong version in Cargo.lock (526ea89)
- chore: update version (11c6fac)
- chore: include sha256 checksum files for releases (#39) (71ff819)
- fix: normalize CRLF to LF when hashing embed files (#41) (ab509cf)
