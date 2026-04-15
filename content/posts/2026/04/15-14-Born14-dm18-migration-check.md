---
title: DM-18 Migration Safety Check
date: 2026-04-15 14:24:07 +00:00
tags:
  - Born14
  - GitHub Actions
draft: false
repo: https://github.com/Born14/dm18-migration-check
marketplace: https://github.com/marketplace/actions/dm-18-migration-safety-check
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Born14/dm18-migration-check** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dm-18-migration-safety-check) to find the latest changes.

## Action Summary

This GitHub Action, **dm18-migration-check**, automates the detection of risky SQL migration patterns that add or enforce `NOT NULL` constraints on columns without default values, which can lead to runtime errors on populated tables. By analyzing pull request changes, reconstructing schema states, and applying the highly precise DM-18 rule (19 true positives, 0 false positives on a public corpus), it generates actionable feedback via comments and ensures migration safety without requiring configuration.

## What's Changed

Patch release focused on one user-visible fix and a set of quality improvements.

**Fixed: `-- verify: ack DM-18 <reason>` comments now suppress the check as documented.** Earlier versions parsed the acknowledgement comment but still reported the finding as a failure in the PR comment. If you previously added an ack comment and saw the check fail anyway, it will now pass on re-run.

Also in this release:

- The action now emits GitHub Actions warnings when it cannot fully reconstruct the base-branch schema for a group of migrations, so a partial run is visible instead of silent.
- Smoke test suite rewritten with `bun:test` and expanded to cover the ack-suppression contract end-to-end.
- README documents that `@v1` is the moving major tag and `@v1.0.1` is the immutable pin.

No changes to the DM-18 rule itself. The calibration claim (**19 true positives, 0 false positives on 761 public Postgres migrations**) is unchanged.
