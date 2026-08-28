---
title: TookEffect Verified Merge
date: 2026-08-28 17:42:23 +00:00
tags:
  - tookeffect
  - GitHub Actions
draft: false
repo: https://github.com/tookeffect/tookeffect-action
marketplace: https://github.com/marketplace/actions/tookeffect-verified-merge
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  `TookEffect Verified Merge` is a GitHub Action that uses [Tookeffect](https://tookeffect.com) to verify if a pull request has been merged correctly into a branch. It provides an authoritative final verdict by executing the merge through TookEffect and ensuring that the change was applied as intended on the destination branch. The action binds a unique idempotency key to each exact PR head and base commit, retries only the identical request if needed, and returns success for a completed `APPLIED` verdict. It also provides detailed outputs about the Effect ID, verdict, reason, receipt URL, and keys, ensuring transparency in the verification process.
---


Version updated for **https://github.com/tookeffect/tookeffect-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tookeffect-verified-merge) to find the latest changes.

## Action Summary

`TookEffect Verified Merge` is a GitHub Action that uses [Tookeffect](https://tookeffect.com) to verify if a pull request has been merged correctly into a branch. It provides an authoritative final verdict by executing the merge through TookEffect and ensuring that the change was applied as intended on the destination branch. The action binds a unique idempotency key to each exact PR head and base commit, retries only the identical request if needed, and returns success for a completed `APPLIED` verdict. It also provides detailed outputs about the Effect ID, verdict, reason, receipt URL, and keys, ensuring transparency in the verification process.

## What's Changed

First public release of TookEffect Verified Merge.

Executes an exact GitHub pull request merge through TookEffect and independently verifies the authoritative GitHub state before returning APPLIED, NOT_APPLIED, or AMBIGUOUS.

Production end-to-end smoke verified with a real GitHub merge and TookEffect Effect receipt.
