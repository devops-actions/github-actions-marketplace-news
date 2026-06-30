---
title: ReviewGate
date: 2026-06-30 15:11:42 +00:00
tags:
  - LVTD-LLC
  - GitHub Actions
draft: false
repo: https://github.com/LVTD-LLC/reviewgate
marketplace: https://github.com/marketplace/actions/reviewgate
version: v0.1.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LVTD-LLC/reviewgate** to version **v0.1.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewgate) to find the latest changes.

## What's Changed

## Changes

- Changed the default canonical PR summary to the concise ReviewGate output.
- Added `summary_style: concise|detailed` so repos can opt back into the old detailed summary when needed.
- Added the `ReviewGate: running` placeholder comment that is replaced by the final canonical summary.
- Fixed concise fallback behavior for inline comments and summary publishing edge cases.
- Added the fresh `v0` consumer smoke-test procedure for validating moved major tags.

The moving `v0` tag has also been advanced to this release.
