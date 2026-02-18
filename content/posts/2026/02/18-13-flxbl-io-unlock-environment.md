---
title: Unlock Environment
date: 2026-02-18 13:27:56 +00:00
tags:
  - flxbl-io
  - GitHub Actions
draft: false
repo: https://github.com/flxbl-io/unlock-environment
marketplace: https://github.com/marketplace/actions/unlock-environment
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flxbl-io/unlock-environment** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unlock-environment) to find the latest changes.

## Action Summary

The "Unlock Environment Action" is a GitHub Action that unlocks environments managed via SFP Server, offering explicit control over when an environment lock is released. It is particularly useful for workflows where auto-unlock is disabled or when unlocking needs to occur in a separate job. Designed to never fail the pipeline, it ensures reliable cleanup processes by gracefully handling errors.

## Release notes

## 1.0.0 (2026-01-12)


### Features

* add manual trigger to CI workflow ([1dfaef5](https://github.com/flxbl-io/unlock-environment/commit/1dfaef58035f62a6575a16e51fafe98eacd59742))
* initial release of unlock-environment action ([067eb0f](https://github.com/flxbl-io/unlock-environment/commit/067eb0fa9ac7f58c2b10a4944fb53da6ba94088a))


### Bug Fixes

* use explicit flags for sfp server unlock command ([9b0796a](https://github.com/flxbl-io/unlock-environment/commit/9b0796adf85e1a603bb761d4b7bb0808e2df8eef))
* use GHA_TOKEN for release-please ([8d4aa86](https://github.com/flxbl-io/unlock-environment/commit/8d4aa86e9cdc5b949f169d9aa3174f0c6c648010))
