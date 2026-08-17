---
title: ProofRun Verify
date: 2026-08-17 21:36:44 +00:00
tags:
  - yebiguo
  - GitHub Actions
draft: false
repo: https://github.com/yebiguo/ProofRun
marketplace: https://github.com/marketplace/actions/proofrun-verify
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  ProofRun is a tool that cryptographically verifies whether AI coding agents' reported test results are accurate. It does this by comparing the exact code state (git commit and uncommitted changes) to the results of running checks, ensuring that any change in code invalidates previous check results marked as "PASS." This helps prevent false claims about tests passing when the actual code has changed.
---


Version updated for **https://github.com/yebiguo/ProofRun** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/proofrun-verify) to find the latest changes.

## Action Summary

ProofRun is a tool that cryptographically verifies whether AI coding agents' reported test results are accurate. It does this by comparing the exact code state (git commit and uncommitted changes) to the results of running checks, ensuring that any change in code invalidates previous check results marked as "PASS." This helps prevent false claims about tests passing when the actual code has changed.

## What's Changed

## v0.3.0 — Tamper-evident receipts

Every check result ProofRun records is now signed (HMAC-SHA256) with a local key and verified on read. A hand-edited or forged `receipt.json` entry is silently dropped rather than trusted — it never shows a false PASS.

**What's new**
- Receipts are signed on write, verified on read (schema bumped to `proofrun/v2`)
- Signing key is generated automatically on first use, kept out of git on a best-effort basis
- Two symlink-based attacks on the key file were found and closed in review before this shipped

**Before relying on this:** it's tamper-evident, not tamper-proof — it catches casual hand-edits, not an attacker who already has read access to the signing key. See the README's [Tamper-evident receipts](https://github.com/yebiguo/proofrun#tamper-evident-receipts) section for exactly what it does and doesn't guarantee.

**Upgrading from v0.2:** receipts signed before v0.3 have no signature and read as `NOT RUN` — there's no migration path. Re-run your checks after upgrading.

**Also in this release:** the GitHub Action from v0.2 is unaffected by any of this — it never trusts a checked-out `receipt.json`, so local signing changes nothing about what makes its output trustworthy.
