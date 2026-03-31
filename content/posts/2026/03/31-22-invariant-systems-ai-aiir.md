---
title: AIIR — AI Integrity Receipts
date: 2026-03-31 22:13:18 +00:00
tags:
  - invariant-systems-ai
  - GitHub Actions
draft: false
repo: https://github.com/invariant-systems-ai/aiir
marketplace: https://github.com/marketplace/actions/aiir-ai-integrity-receipts
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/invariant-systems-ai/aiir** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aiir-ai-integrity-receipts) to find the latest changes.

## Action Summary

AIIR (AI Integrity Receipts) is a GitHub Action designed to track and verify AI involvement in code commits by generating tamper-evident, content-addressed receipts. It automates the process of documenting declared AI usage in commit metadata, ensuring durable and verifiable proof that remains independent of centralized services. This action addresses the gap in AI provenance by enabling developers, auditors, or regulators to validate the integrity of AI-assisted code contributions across local, CI, or offline workflows.

## What's Changed

## Install

```bash
pip install aiir==1.3.0
```

**GitHub Action** — `uses: invariant-systems-ai/aiir@v1`
**Docker** — `docker run ghcr.io/invariant-systems-ai/aiir:1.3.0`
**GitLab CI/CD** — [Catalog component](https://gitlab.com/explore/catalog/invariant-systems/aiir)

<!-- Release notes generated using configuration in .github/release.yml at v1.3.0 -->

## What's Changed
### 🧩 Other Changes
* fix: security hygiene + public surface consistency by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/22
* fix(ci): repair action-health sigstore dependency path by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/24
* fix(docs): clear markdownlint violations blocking quality gate by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/25
* hardening: close remaining scan-risk patterns by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/27
* hardening: eliminate remaining pinned-dependency scan findings by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/29
* fix(docs): reconcile public release metrics by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/30
* hardening: finish release-smoke version pin path and MCP import style by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/31
* ci: auto-queue merge for owner PRs by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/26
* docs: add AI Gate changelog entry by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/33
* feat: add normative CDDL grammar for AIIR commit receipt (RFC 8610) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/28
* fix(ci): add --repo flag to gh pr commands in AI Gate workflow by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/34
* harden: close high-severity overly-permissive file findings by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/32
* feat: adversarial corpus (32 fixtures) + encoder interop vectors (8 vectors) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/36
* docs: add Quick Start fast path above the fold in README by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/37
* fix(docs): correct heading level in Quick Start (MD001) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/38
* docs: refresh stale test-count claims by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/39
* fix(launch): reconcile launch polish with stale-score updates by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/46
* fix: schema version drift (v1→v2) + CI hardening (pre-push, AGENTS.md, review tracker) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/47
* docs: honest detection-scope narrative across all public surfaces by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/48
* ci: trigger public receipts index refresh by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/50
* fix: honor review thread resolution in ai-gate by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/51
* test: guard public surface metrics against drift by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/49
* docs: track GitHub main ruleset in repo by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/53
* chore(deps): bump actions/upload-artifact from 4.6.2 to 7.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/55
* chore(deps): bump actions/setup-node from 4.3.0 to 6.3.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/56
* chore(deps): bump DavidAnson/markdownlint-cli2-action from 19.0.0 to 22.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/57
* chore(deps): bump github/codeql-action from 3.28.19 to 4.32.6 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/58
* feat: add AIIR VS Code extension by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/60
* chore(deps): bump the actions-minor group with 4 updates by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/54
* ci: make ai-gate advisory-only by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/61
* fix: HN readiness — conformance manifest, test alignment, editor drift by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/62
* docs: sharpen README local-first framing by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/63
* docs: correct README EU AI Act timeline by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/64
* docs: keep README local-first longer by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/65
* docs: align README copy for launch by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/66
* docs: add GitLab Technology Partner status to README by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/68
* feat: add 40 hardened conformance vectors (97 total) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/76
* feat: add inference verification and Copilot surfaces by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/77
* chore(deps): bump docker/login-action from 3.3.0 to 4.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/70
* chore(deps): bump actions/upload-artifact from 4.6.2 to 7.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/71
* chore(deps): bump DavidAnson/markdownlint-cli2-action from 19.0.0 to 22.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/72
* chore(deps): bump google/clusterfuzzlite from 82652fb49e77bc29c35da1167bb286e93c6bcc05 to 884713a6c30a92e5e8544c39945cd7cb630abcd1 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/73
* Add DSSE ↔ JCS conformance harness and GitHub Actions workflow by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/78
* Add `quickstart`/`status`/`ci` CLI shorthands and ledger-init helpers by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/79
* chore(deps): bump the actions-minor group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/69
* feat: launch polish — README rewrite, provenance hardening, adoption guides, trust page by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/75
* feat: publish release attestation surface by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/81
* feat: enforce unsigned receipt policy by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/82
* feat: surface receipt signing aggregates by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/83
* docs: align public surfaces to AI provenance wedge by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/84
* docs: pain-first README, ecosystem positioning, production classifier by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/85
* docs: add "Show AIIR in your README" badge section by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/86
* fix: pre-outreach cleanup — SPDX headers, architecture version, contrib integrations by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/87
* chore(release): prepare 1.3.0 by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/88


**Full Changelog**: https://github.com/invariant-systems-ai/aiir/compare/v1.2.5...v1.3.0

<!-- BEGIN:RELEASE_ATTESTATION -->
## Provenance & Verification

| Artifact | SHA-256 | Rekor log index | Provenance |
|---|---|---|---|
| [aiir-1.3.0-py3-none-any.whl](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-1.3.0-py3-none-any.whl) | `sha256:8050312d605d6dd9932060078a7c9dbd535675ecb35bda158ceb652a6ac4fc3e` | `1203554399` | [PyPI attestation](https://pypi.org/integrity/aiir/1.3.0/aiir-1.3.0-py3-none-any.whl/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-1.3.0-py3-none-any.whl.intoto.jsonl) |
| [aiir-1.3.0.tar.gz](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-1.3.0.tar.gz) | `sha256:53b1e7b11f9c99eeda65ee82e745091d81694bcbb965bd6e3b2fe496ee2ba3c6` | `1203554408` | [PyPI attestation](https://pypi.org/integrity/aiir/1.3.0/aiir-1.3.0.tar.gz/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-1.3.0.tar.gz.intoto.jsonl) |
| [aiir-sbom.cdx.json](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-sbom.cdx.json) | `sha256:9ff1e7abfa1f9059a87756d0ca5f101c4d12f7ad57f56681311867942a3b3289` |  -  | [GitHub release asset](https://github.com/invariant-systems-ai/aiir/releases/download/v1.3.0/aiir-sbom.cdx.json) |

```bash
# Verify the published release evidence for aiir==1.3.0
python scripts/verify-release-evidence.py 1.3.0
```
<!-- END:RELEASE_ATTESTATION -->

