---
title: OSS Security Policy as Code
date: 2026-06-09 23:04:49 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v7.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v7.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v7.2.0

v7.2.0 adds **OpenSSF OSPS Baseline v2026.02.19 coverage** — as shipped structured data, a generated coverage page, and a new read-only CLI command. It is **additive and advisory-only**: no control verdict, report schema, or existing CLI contract changes. If you do nothing, `evaluate` behaves exactly as in v7.1.

---

## Highlights

- **OSPS Baseline v2026.02.19 coverage map (ADR-037).** A new bundled data file (`data/frameworks/osps-baseline-2026.yaml`) maps the `osps-baseline-2026-1` controls to the 41 real OSPS Baseline criteria — transcribed from the signed `ossf/security-baseline` tag `v2026.02.19` — with each control's assurance read live from the catalog. A generated page (`docs/osps-baseline-2026-coverage.md`) shows **honest per-level coverage** (L1 11/17, L2 17/32, L3 21/40 criteria with at least one clone-visible signal) and lists all **19 real gaps**. The Documentation and Security-Assessment families are intentionally 0% — the kit does not assess user-documentation quality or threat modeling from a clone, and says so.
- **New `osps-coverage` command.** `oss-policy-kit osps-coverage` prints the per-level coverage and gaps as plain text; `--format json` emits the full machine-readable map. Read-only; changes no `evaluate` verdict.

---

## Honesty note

This is an **advisory mapping, not a conformance certification**. "Coverage" means a bundled control provides a clone-visible *signal toward* an OSPS criterion — never a guarantee of an OSPS maturity level. Per-level counts are pinned by tests so coverage cannot silently inflate. The Scorecard v6 `--format=osps` conformance **verdict** renderer is intentionally deferred until that format reaches GA (ADR-018).

---

## Also in this release

- **CI hardening:** the `pip-audit` job now upgrades pip to ≥26.1.2, clearing **PYSEC-2026-196** (a finding in the runner's own pip — a build tool, not a project dependency — fixed at the source rather than suppressed).
- Dependency bumps: ruff 0.15.16, actions/checkout v6.0.3, github/codeql-action v4.36.2.

---

## Notes

- All v7.2.0 work is additive. 56 profiles, 212 controls, 20 commands.

---

**Install:** `pip install oss-policy-kit==7.2.0` · **Container:** GHCR · **License:** Apache-2.0.

