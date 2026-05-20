---
title: OSS Security Policy as Code
date: 2026-05-20 23:15:31 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v6.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v6.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

The **OSS Security Policy as Code Starter Kit** automates the evaluation of open-source software repositories against predefined security policy profiles to ensure repository governance, CI/CD hardening, release integrity, and compliance with industry frameworks like NIST SSDF and SLSA. It generates detailed reports (Markdown, JSON, and SARIF) for human review and CI integration, leveraging evidence files, scanner outputs, and waivers to provide explicit assurance grading and actionable security insights. This tool streamlines security policy enforcement and simplifies compliance tracking, but it is not a vulnerability scanner or certification engine.

## What's Changed

## OSS Security Policy as Code Starter Kit v6.0.0

This release is the first major version since the v5.x line: a Cycle 1 + Cycle 2 expansion to **52 profiles** and **212 controls**, adding AI-agent, MCP, and OWASP Agentic security profiles, EU AI Act Article 11 + Annex IV and EU CRA Article 13/14 readiness, SLSA Source L1/L2, the opt-in reports/2.0 contract, property-based tests, and supply-chain hardening. It carries three breaking changes (M-003, B-001, B-002).

---

## Highlights

- evaluate/profiles UX + advisory banner + waivers updates
- reports/2.0 schema dir + reporting updates
- bundle distroless + GH-2026 + scanner-integrity signals (PR-29..32)
- appsec-agentic-asi-1 + AGENT-ASI-* (PR-28)
- appsec-mcp-server-1 + MCP-* (PR-27)
- slsa-source-l2-1 + SLSA-SRC-006..008 (PR-25)
- Rekor v2 tile-inclusion enum + 2026 ecosystem signals (PR-24/26/29-32)
- EPSS + CISA KEV triage (SCA-KEV/EPSS, PR-23)
- cra-eu-ready-2-1 + CRA Art.13/14 signals (PR-22)
- EU AI Act Annex IV expansion (LLM-AI-ACT-*, PR-21)
- osps-baseline-2026-1 + Scorecard v6 conformance (PR-20)
- ai-agent-baseline-1 source-side checks (AI-AGENT-*)
- Shai-Hulud publish-defense docs + tests (PR-19)
- v6.0.0 control + evaluator definitions
- reports/2.0 contract URL + status mapping + migration script (PR-16, V6-05, BREAKING)
- export-evidence --format chainloop (PR-17, experimental, V6-04)
- recommend-profile/v2 schema_version → absolute URL (PR-15, BREAKING)
- cra-eu-ai-act-art11-1 + LLM-AI-ACT-* (PR-11)
- appsec-llm-ssdf-218a-1 + LLM-218A-* + AIBOM-PRESENT-001 (PR-10)
- gitlab-level-2 + GL-PIPE-007..012 (PR-14)
- slsa-source-l1-1 + SLSA-SRC-* family (PR-13)
- GH-PROV-023 promotion signal→evidence-backed (PR-12, ADR-007)
- oss-publish-readiness-1 + PUBLISH-OIDC-* (PR-9)
- emit-insights subcommand (OpenSSF Security Insights 1.0) (PR-8)
- webhook-security-2 + 6 SEC-WEBHOOK-* dimensions (PR-5)
- GH-EGRESS-HRN-001 + verification.source enum (PR-7)
- add s2c2f-l2-1 and s2c2f-l3-1 (recomposition only) (PR-6)
- SPDX 3.0.1 detection + BSI TR-03183-2 v2.1.0 validation (PR-4)
- zizmor severity properties + CISA VEX minimum tests (PR-3)

---

## Improvements

- _No fixes or performance changes in this release._

---

## Notes

- **Breaking changes:** M-003, B-001, B-002 — see [docs/v6.0.0-migration-guide.md](docs/v6.0.0-migration-guide.md).
- **Verify the artifacts:** GitHub Artifact Attestations + PyPI Trusted Publishing + cosign keyless. Commands in [docs/supply-chain-verification.md](docs/supply-chain-verification.md) (not a SLSA Build L3 claim).
- fix stale 47/181 count in PR-18 narrative line (52/212)
- regenerate controls-catalog (212/52) + sync counts + add generator script
- v6.0.0 counts refresh + ADR backfill 009/010/013 + framework-alignment (PR-33)
- refresh SARIF adapter + publication-readiness assertions
- ci,chore: workflow hardening, yamllint, gitignore, build config
- Hypothesis coverage for waivers, profiles, reports
- public launch assets — ROADMAP, tutorial, sample reports, at-a-glance
- static JS/CSS bundle + pinned npm deps
- control + profile coverage for PR-20..32
- source-built image + provenance verification
- Update security-ci-cd.yml
- Update security-ci-cd.yml
- release: v6.0.0.dev0 — version bump + CHANGELOG summary + counts refresh (PR-18)
- expand Unreleased + refresh v5.9.x stale references
- add 8 ADRs and 5 doc stubs for v6.0.0 design baseline
- refresh counts + add v6.0.0 Roadmap sections (PR-2)

---

**License:** Apache-2.0.

