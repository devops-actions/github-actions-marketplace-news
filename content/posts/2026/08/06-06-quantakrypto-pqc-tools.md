---
title: quantakrypto Quantum Readiness Scan
date: 2026-08-06 06:33:57 +00:00
tags:
  - quantakrypto
  - GitHub Actions
draft: false
repo: https://github.com/quantakrypto/pqc-tools
marketplace: https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan
version: v0.9.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action is designed to automate the detection of quantum-vulnerable cryptography in codebases using the `@quantakrypto/qscan` tool. It runs qScan as part of a CI pipeline and can fail the build if new quantum vulnerabilities are found, providing SARIF output for analysis. The action supports multiple programming languages and includes features like triage with an AI coding agent and remediation support.
---


Version updated for **https://github.com/quantakrypto/pqc-tools** to version **v0.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan) to find the latest changes.

## Action Summary

This GitHub Action is designed to automate the detection of quantum-vulnerable cryptography in codebases using the `@quantakrypto/qscan` tool. It runs qScan as part of a CI pipeline and can fail the build if new quantum vulnerabilities are found, providing SARIF output for analysis. The action supports multiple programming languages and includes features like triage with an AI coding agent and remediation support.

## What's Changed

The `--mandate` compliance gate becomes CI-consumable, and an org cryptography policy can compose with it. SemVer: **minor** (additive features). Two exit-code behavior changes are called out below — read them before upgrading a `--mandate` pipeline.

### Added
- **Machine-readable mandate verdicts** — `--format json` gains a top-level `mandateMapping`; `--format sarif` carries the same under `run.properties.mandate`; `--format evidence` embeds a **date-pinned, hashed** `mandateMapping` in the ISO/IEC 27001 A.8.24 attestation. The GitHub Action threads the same verdicts into its uploaded SARIF.
- **`--policy` composes with `--mandate`** — families the org explicitly permits or is transitioning are annotated (`policyVerdict` / `acknowledged`) and exempt from the early gate (`--fail-now` / `--lead-months`); a **passed disallow deadline still fails**, and `prohibited` always wins over `permitted`. Exposed as a new `policy` input on the Action.

### Changed
- **Exit-code loosening (opt-in):** with `--policy` **and** `--mandate --fail-now`/`--lead-months`, a permitted/in-transition family no longer trips the early gate (it did in 0.8.0). Only affects runs passing both flags.
- **Exit-code tightening:** the CLI now evaluates the mandate gate on **pre-baseline** findings, matching the Action — a `--baseline` no longer waives a regulatory **deadline**.
- **`--mandate cnsa-2.0` disallow date moved 2035 → 2033** — CNSA 2.0 now encodes its own exclusive-use timeline (deprecate 2030 / disallow 2033) from `PQC_STANDARDS.cnsaTimeline`; `nist-ir-8547` keeps 2035.
- **Pre-1.0 shape change:** `MandateEvaluation` / `MandateFindingVerdict` gained required fields; runtime behavior for existing `evaluateMandates` callers is identical.

### Fixed
- **Evidence hash reproducibility** — `evaluateMandates` pins `now` to UTC midnight, so the attested hash is identical for any two same-day runs on a commit.

Full notes in [CHANGELOG.md](https://github.com/quantakrypto/pqc-tools/blob/main/CHANGELOG.md).
