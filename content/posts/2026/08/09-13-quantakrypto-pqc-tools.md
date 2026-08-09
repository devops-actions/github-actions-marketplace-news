---
title: quantakrypto Quantum Readiness Scan
date: 2026-08-09 13:57:32 +00:00
tags:
  - quantakrypto
  - GitHub Actions
draft: false
repo: https://github.com/quantakrypto/pqc-tools
marketplace: https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan
version: v0.10.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action runs the qScan and Sieve checks in CI to identify quantum-vulnerable crypto, annotate the diff, and fail the build only on new findings. It provides SARIF output for code-scanning upload and supports compliance mandates with dates and deadlines.
---


Version updated for **https://github.com/quantakrypto/pqc-tools** to version **v0.10.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan) to find the latest changes.

## Action Summary

This GitHub Action runs the qScan and Sieve checks in CI to identify quantum-vulnerable crypto, annotate the diff, and fail the build only on new findings. It provides SARIF output for code-scanning upload and supports compliance mandates with dates and deadlines.

## What's Changed

Minor. Three additive features and two user-facing bug fixes. Nothing existing changes shape, and no exit code moves.

## Fixed

**Our SARIF was rejected by GitHub code scanning, in full.** A result's `taxa[]` holds reporting-descriptor references directly; we wrapped them in `target`, which is relationship shape. GitHub refused the entire file, so every consumer following the workflow we document — action writes SARIF, `upload-sarif` publishes it — had been getting nothing in their Security tab. Two safeguards agreed with the bug and are fixed with it: the validator never looked inside `taxa`, and the unit test asserted the broken shape. Found by running our own scanner against our own repository for the first time.

**qProbe refuses a URL as a URL**, not as a CIDR block, and names the host to use. `qprobe --i-own-this https://example.com` used to fail with "qProbe probes one host at a time, not ranges" — an error describing a mistake the operator had not made.

## Added

**One workflow runs any combination of the three checks.** `checks: scan,conformance,probe` — any subset. It replaces three separate workflow files that each shelled out to `npx` and turned the JSON into a result payload with inline `jq`, which put our reporting logic inside repositories we cannot fix. `checks` defaults to `scan`, exactly what the action did before, so an existing workflow keeps working unchanged.

**`ignore` and `include` inputs.** The CLI had both; the action had neither, so anything reachable only through the action could not exclude a path. Content, fixtures and docs that *describe* cryptography match the detectors and become findings nobody wanted scanned. A baseline was the only workaround and it is the wrong tool: it records a finding as known debt, and a blog post mentioning RSA is not debt.

**Sieve reports `ERROR` when the implementation could not be run**, distinct from `FAIL`. Pointing `--impl` at a command that does not exist used to produce ~35 high-severity conformance defects tagged with bug classes that were never exercised — a confident verdict about code that never executed. It now reports one harness finding that names the actual cause, quoting the diagnostic line from the child's stderr.

## Note for existing users

The moving `v1` Action tag now points at this release, so `uses: quantakrypto/pqc-tools/packages/action@v1` picks up the unified action. It is backward compatible: `checks` defaults to `scan`, and the outputs, gate, exit codes and annotations are unchanged.

Under a platform dispatch the action now reports the result itself. A workflow that also has its own reporting step will find the callback token already consumed and get a 403 on the second post; the first write wins and the job stays green. Removing that step is tidier but not required.
