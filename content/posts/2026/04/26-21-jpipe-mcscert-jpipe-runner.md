---
title: jPipe Runner
date: 2026-04-26 21:22:01 +00:00
tags:
  - jpipe-mcscert
  - GitHub Actions
draft: false
repo: https://github.com/jpipe-mcscert/jpipe-runner
marketplace: https://github.com/marketplace/actions/jpipe-runner
version: v3.4.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/jpipe-mcscert/jpipe-runner** to version **v3.4.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jpipe-runner) to find the latest changes.

## Action Summary

The **jPipe Runner** is a tool designed to execute and validate workflows defined in the jPipe framework. It automates the generation of workflow diagrams, supports variable substitution, integrates additional modules, validates workflows without execution, and enables configurable outputs. This action simplifies workflow execution and visualization, making it particularly useful for users needing streamlined pipeline management and debugging in data processing or automation tasks.

## What's Changed

- fix(debian): skip dh_auto_test to avoid networkx import failure (19efd1e)
- Refactor validation layer and improve error handling (#73) (6e2376c)
- fix(homebrew): build rpds-py from source with rust build dep (90e76b1)
- fix(update-homebrew): install Poetry deps and guard against empty RESOURCES (f05e4d9)
- fix(homebrew): prefer pre-built wheels over sdist in formula generation (edc2dd8)
- Add jpipe_link decorator for explicit function binding to pipeline (#72) (f328ab7)
- feat: validate justification JSON files against a declarative JSON Schema (#71) (fe103ba)
- docs: remove all references to decommissioned GUI (bc9db35)
- fix(release): add python3-tomli to release job apt dependencies (25d85ce)
- fix(deb): install python3-tomli via apt, not pip (62922d1)
