---
title: kicadiff
date: 2026-05-25 06:30:18 +00:00
tags:
  - sksat
  - GitHub Actions
draft: false
repo: https://github.com/sksat/kicadiff
marketplace: https://github.com/marketplace/actions/kicadiff
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sksat/kicadiff** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kicadiff) to find the latest changes.

## Action Summary

`kicadiff` is a visual diff tool designed for KiCad projects, enabling users to compare changes between different versions of KiCad design files (.kicad_pcb, .kicad_sch, .kicad_sym, .kicad_mod). It automates the visualization of design differences through interactive HTML viewers, markdown reports, and text-based structural diffs, making it easier to identify changes in PCB layouts, schematics, and component connections. Additionally, it provides design-rule and electrical-rule violation diffs to help catch new issues introduced during the design process, streamlining workflows and improving version control for hardware designers.

## What's Changed

## What's Changed
* fix: pin mutable refs (branch / tag / HEAD) to commit SHA before reading git by @sksat in https://github.com/sksat/kicadiff/pull/11
* feat(cli): default to git diff-compatible index vs working tree by @sksat in https://github.com/sksat/kicadiff/pull/12
* chore(deps): update pnpm to v11 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/7
* chore(deps): update actions/upload-artifact action to v7 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/6
* chore(deps): update pnpm/action-setup action to v6.0.8 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/8
* chore(deps): update dependency @playwright/test to v1.60.0 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/9
* chore(deps): update pnpm to v11.2.2 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/13
* feat(cli): add --exit-code flag for git-diff-compatible change detection by @sksat in https://github.com/sksat/kicadiff/pull/14
* feat(check): add DRC/ERC violation diff subcommand by @sksat in https://github.com/sksat/kicadiff/pull/17
* feat(textdiff): add net (electrical connectivity) structural diff for PCB by @sksat in https://github.com/sksat/kicadiff/pull/15
* feat(cache): add cache stats and cache prune subcommands by @sksat in https://github.com/sksat/kicadiff/pull/16
* chore(deps): update pnpm to v11.3.0 by @renovate[bot] in https://github.com/sksat/kicadiff/pull/18
* chore(action): use kicadiff --exit-code instead of grepping text output by @sksat in https://github.com/sksat/kicadiff/pull/19
* chore: release v0.2.0 by @sksat in https://github.com/sksat/kicadiff/pull/20

## New Contributors
* @sksat made their first contribution in https://github.com/sksat/kicadiff/pull/11

**Full Changelog**: https://github.com/sksat/kicadiff/compare/v0.1.1...v0.2.0
