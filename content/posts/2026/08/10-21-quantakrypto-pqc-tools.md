---
title: quantakrypto Quantum Readiness Scan
date: 2026-08-10 21:40:13 +00:00
tags:
  - quantakrypto
  - GitHub Actions
draft: false
repo: https://github.com/quantakrypto/pqc-tools
marketplace: https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan
version: v0.11.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action **action** (`@quantakrypto/action`) automates the process of scanning codebases for quantum-vulnerable cryptography using the `qScan` tool. It integrates seamlessly with CI pipelines, generates SARIF files for upload, annotates code diffs, and fails the build if new quantum vulnerabilities are detected. This ensures that projects remain post-quantum ready throughout development and deployment cycles.
---


Version updated for **https://github.com/quantakrypto/pqc-tools** to version **v0.11.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan) to find the latest changes.

## Action Summary

The GitHub Action **action** (`@quantakrypto/action`) automates the process of scanning codebases for quantum-vulnerable cryptography using the `qScan` tool. It integrates seamlessly with CI pipelines, generates SARIF files for upload, annotates code diffs, and fails the build if new quantum vulnerabilities are detected. This ensures that projects remain post-quantum ready throughout development and deployment cycles.

## What's Changed

Minor. User-facing fixes to the GitHub Action and the runtime it declares. Nothing existing changes shape, and no exit code moves.

## Fixed

**A URL in the Action's `probe-target` was refused, despite the docs.** Both `action.yml` files have always said "A full URL is accepted and reduced to its host". It was not: `normalizeProbeTarget` existed, was exported, was documented and had its own passing tests, and nothing called it. It is now called, and narrowed so that calling it is safe. Only a string that already carries a scheme is treated as a URL, and only when its authority has no userinfo, so `our-api.example.com@evil.test` is still refused rather than silently resolving to `evil.test` under a manufactured `i-own-this`.

**qProbe reported the wrong tool version in every JSON report and CBOM.** `VERSION` said `0.7.0` while the package was at `0.10.0`, kept honest only by a comment. Every qProbe report and endpoint CBOM since 0.8.0 carried a `toolVersion` that lies about the build, and that is evidence data. The lockstep test `@quantakrypto/core` has always had is now on qProbe too.

**The `setOutput` fallback wrote a removed workflow command.** With no `$GITHUB_OUTPUT` it emitted `::set-output`, which GitHub removed from the runner in 2023 and rejects, spelled with the wrong parameter. Our own unit tests call it, so those commands reached the real runner's stdout during CI, and whether it parsed them came down to output interleaving.

## Added

**The result payload carries each finding's `remediation`.** Every detector produces one, and it rides in the JSON report and the SARIF `help` text, but it was dropped at the payload boundary. The unrunnable-conformance finding splits accordingly: `message` says what happened, `remediation` says what to do.

## Changed

**The Action runs on Node 24.** Both `action.yml` files declared `node20`, which GitHub deprecated and already force-runs on 24. The re-bundled `dist/index.js` is byte-identical, so nothing needed downleveling.

## Docs

The ready-to-copy `examples/quantum-readiness.yml` was syntactically broken and nothing checked it; a supply-chain gate now validates the examples and requires our own action to be pinned to a bare moving major. The Action README documents `checks`, `ignore`/`include`, and what the platform callback does and does not do. Every path example is `.quantakrypto/`, stated as the convention in `docs/CONFIG.md`.

The short-lived `v2` Action tag is **deleted**. `checks` defaults to `scan`, so it was never a breaking change and never earned a new major. `uses: quantakrypto/pqc-tools/packages/action@v1` is the ref, and it now points here.

