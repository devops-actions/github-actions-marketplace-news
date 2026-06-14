---
title: Run OrchStep
date: 2026-06-14 22:20:37 +00:00
tags:
  - orchstep
  - GitHub Actions
draft: false
repo: https://github.com/orchstep/run-orchstep
marketplace: https://github.com/marketplace/actions/run-orchstep
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/orchstep/run-orchstep** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-orchstep) to find the latest changes.

## What's Changed


### Added

- `output` input (default `plain`, CI-friendly) and `json-file` input to expose
  the structured run result.
- Surfaces OrchStep's documented exit-code contract (3 = bad workflow,
  4 = assertion failed, 1 = step failed) and its GitHub `::error` annotations
  (provided by orchstep CLI v0.9.0+).

### Changed

- `run` now defaults to `--output plain` for CI-friendly logs (overridable via
  the `output` input or `extra-args`).
