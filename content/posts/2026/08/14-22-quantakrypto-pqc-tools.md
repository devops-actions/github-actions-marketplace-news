---
title: quantakrypto Quantum Readiness Scan
date: 2026-08-14 22:31:59 +00:00
tags:
  - quantakrypto
  - GitHub Actions
draft: false
repo: https://github.com/quantakrypto/pqc-tools
marketplace: https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan
version: v0.12.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action **`@quantakrypto/action`** automates the process of identifying and reporting quantum-vulnerable cryptography in a codebase during CI. It runs the `qScan` tool to scan for such vulnerabilities, writes SARIF files for upload, annotates diffs, and fails the build only on newly identified issues. This ensures continuous monitoring and compliance with post-quantum standards in software development pipelines.
---


Version updated for **https://github.com/quantakrypto/pqc-tools** to version **v0.12.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan) to find the latest changes.

## Action Summary

The GitHub Action **`@quantakrypto/action`** automates the process of identifying and reporting quantum-vulnerable cryptography in a codebase during CI. It runs the `qScan` tool to scan for such vulnerabilities, writes SARIF files for upload, annotates diffs, and fails the build only on newly identified issues. This ensures continuous monitoring and compliance with post-quantum standards in software development pipelines.

## What's Changed

Additions only. Nothing here is breaking, so the Action stays on `@v1`: that is exactly the case a moving major tag exists for.

## Added — a real crypto inventory

What the tool called an inventory was a findings list under another name. `buildInventory` counted findings, `toCbom` iterated findings, and all 47 detectors fire only on cryptography that is *wrong*. `ML-KEM` appeared in the entire codebase solely inside remediation strings.

So a repository that had migrated correctly was **indistinguishable from one that uses no cryptography at all**: both reported an empty inventory and 100/100. You could prove nothing was broken; you could not prove you had done the work.

`inventory.assets` now carries every algorithm found, grouped with a count and a few example sites. The classical half is derived from the findings, which already carry algorithm, file and line, so it can never disagree with the findings list. The other half is a new pass over the PQC families, the hybrids, the pre-standard CRYSTALS names (kept separate, because a Kyber768 build is not an ML-KEM-768 build) and the symmetric and hash primitives.

Symmetric is classified `not-quantum-relevant` rather than `quantum-safe`. Grover halves the effective key length, which matters at 128 bits and does not break 256; calling AES quantum-safe beside ML-KEM would flatten a real distinction.

Detection is lexical, like the rest of the engine, so a mention in prose counts. Use `--ignore` for content that describes cryptography without using it.

## Added — findings carry their baseline fingerprint

The same id `qscan --write-baseline` writes, so CI and any consumer hold one identity for a finding rather than two that agree until one is edited. It excludes line and column, so an edit that shifts code down a file does not resurface a finding as new.

## Fixed — the JSON reporter dropped the inventory

It names its `inventory` fields explicitly, so `assets` was computed and then silently discarded. The third field lost at a hand-written boundary, after the remediation and the fingerprint.

## Fixed — an algorithm named in key position is not a use of it

`.cargo_vcs_info.json` carries `{"sha1": "<commit>"}` for the git revision, and the first inventory run read that as "this project uses SHA-1". A name in key position is metadata now. The guard initially also dropped `ml_kem_768::keypair()`, because Rust's path separator is a colon too; the tests caught it.

