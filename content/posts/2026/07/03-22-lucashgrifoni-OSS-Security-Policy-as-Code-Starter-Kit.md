---
title: OSS Security Policy as Code
date: 2026-07-03 22:11:50 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v10.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v10.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v10.0.0

**The normalized-findings major (ADR-030).** The kit now correlates the scanner evidence it already composes — six kit evidence JSONs plus four external SARIF drops — into **one deduplicated, KEV/EPSS-ranked finding view**, delivered as a new versioned artifact and a new command. Stateless by design: one clone-only run, no database, no state between runs, no network.

---

## Highlights

- **New command: `correlate-findings`** (23rd command). Normalizes findings from Semgrep, the four IaC/K8s scanners, zizmor, poutine, OSV-Scanner, and Gitleaks into one vocabulary; deduplicates across scanners with deterministic `opk-fk/v1` fingerprints (conservative under-merge: the same CVE from two tools collapses, distinct issues never do); and ranks CISA-KEV first, then EPSS, then severity. Re-runs are bit-identical.
- **New contract: `findings/1.0`** (`.oss-policy-kit/findings.json`) — strict schema, published at `reports/schema/findings-1.0.schema.json`. Every source's original severity is preserved verbatim; missing/unreadable evidence is recorded honestly, never fatal.
- **Opt-in gates for the correlated set**: `--fail-on-severity` and `--fail-on-kev` (a correlated group gates once, regardless of how many tools reported it). Control evaluators are untouched — fence tests prove `evaluate` output is byte-identical with the feature present or absent.
- **Finding-level waivers**: `vulnerability_ids:`-keyed entries in `waivers.yaml` (the same ones `emit-vex` consumes) mark findings as waived — visible in the artifact, exempt from the findings gates, and provably unable to change any control state.
- **Offline EPSS/KEV enrichment**: `--enrichment-file` takes a user-supplied snapshot that refines **ranking only** (inferred trust, provenance recorded). The kit ships no bundled advisory data.
- **Aggregator SARIF export**: `--format sarif` self-describes as an aggregator/correlator — never the scanner — with per-result source-tool attribution and a double-reporting warning.
- **`evaluate --with-findings-summary`**: additive `extensions.findings_summary` block (totals, by-severity, KEV/high-EPSS counts, findings digest) computed in-process; changes no state, summary, digest, or exit code.

## Breaking changes (see [docs/v10.0.0-migration-guide.md](https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/blob/master/docs/v10.0.0-migration-guide.md))

- The deprecated **`cra-eu-ready-2-1` profile alias is removed** (ADR-029, one-major cycle complete). Use `cra-eu-conformance-evidence-1`; the old id exits 2 with a pointer.
- The legacy **`evaluation-report-v1/v2/v3.schema.json` files no longer ship** in the wheel or the public `reports/schema/` mirror (the contracts were removed in v9.0.0). The mirror now carries the real current contracts (reports/2.0 + findings/1.0).
- **`scripts/migrate-1.0-to-2.0.py` is removed** — retrieve it from the v9.x tags for stored legacy reports.
- **`export-evidence` requires reports/2.0 input.** The silent reports/1.0 fallbacks are gone, and previously-wrong outputs are fixed: SPDX annotations now carry real states/messages, every renderer reads `target_path`, chainloop stops reading a nonexistent waivers array.

## Docs

- New [findings-correlation.md](https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/blob/master/docs/findings-correlation.md) — the contract, the `opk-fk/v1` key spec, the under-merge guarantees, and the anti-ASPM fence.
- New v10.0.0 migration guide; CLI reference and README updated for the 23-command surface.
- `triage-cvss-epss-kev.md` no longer implies the evaluator thresholds are tunable (they are fixed; tunable prioritization is the findings surface).

## Integrity

Quality gates: 4,310 unit + 19 property tests (including determinism, order-independence, and six mandatory fence tests), mypy strict, coverage 93%+. Pre- and post-publish clean-room validation on the real PyPI artifact. PyPI Trusted Publishing + registry attestations; container signed with cosign keyless.

**License:** Apache-2.0.

