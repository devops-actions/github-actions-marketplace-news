---
title: AIIR — AI Integrity Receipts
date: 2026-04-26 21:22:10 +00:00
tags:
  - invariant-systems-ai
  - GitHub Actions
draft: false
repo: https://github.com/invariant-systems-ai/aiir
marketplace: https://github.com/marketplace/actions/aiir-ai-integrity-receipts
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/invariant-systems-ai/aiir** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aiir-ai-integrity-receipts) to find the latest changes.

## Action Summary

AIIR is a GitHub Action that generates tamper-evident, deterministic receipts for code commits involving AI-assisted contributions. It provides a verifiable provenance layer to track and prove AI involvement in code, addressing gaps left by inconsistent metadata like `Co-authored-by` trailers. By enabling receipt generation and verification locally, in CI, or offline, AIIR automates integrity checks and supports compliance, auditing, and security needs without relying on centralized services.

## What's Changed

## Install

```bash
pip install aiir==1.4.0
```

**GitHub Action** — `uses: invariant-systems-ai/aiir@v1`
**Docker** — `docker run ghcr.io/invariant-systems-ai/aiir:1.4.0`
**GitLab CI/CD** — [Catalog component](https://gitlab.com/explore/catalog/invariant-systems/aiir)

<!-- Release notes generated using configuration in .github/release.yml at v1.4.0 -->

## What's Changed
### 🧩 Other Changes
* fix: recover release verification path by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/89
* fix: harden release container base by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/90
* fix: allow docker recovery from patched ref by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/91
* chore: prep VS Code extension 0.4.0 release by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/92
* ci: harden sidecar publish secret handling by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/93
* docs: add ecosystem adapters and align in-toto predicate URIs by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/94
* fix(ci): repair action-health smoke test by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/96
* feat: validate signed bundles and ship VS Code 0.4.1 hotfix by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/97
* docs: fix version drift and harden action sigstore install by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/98
* chore(sync): merge GitLab main history into GitHub main by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/99
* fix: repair dogfood rekor import path by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/102
* chore(deps): bump the actions-minor group with 2 updates by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/103
* chore(deps): bump actions/attest-build-provenance from 2.3.0 to 4.1.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/104
* chore(deps): bump DavidAnson/markdownlint-cli2-action from 22.0.0 to 23.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/105
* chore(deps): bump actions/setup-node from 4.3.0 to 6.3.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/107
* chore(deps): bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/106
* feat: automate pulse suggestion PR scaffolding by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/109
* feat: add offline transparency verification by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/110
* chore(deps): bump github/codeql-action from 3.28.19 to 4.35.1 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/112
* chore(deps): bump docker/build-push-action from 6.9.0 to 7.1.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/113
* chore(deps): bump dependabot/fetch-metadata from 2.5.0 to 3.0.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/114
* chore(deps): bump actions/attest-build-provenance from 2.3.0 to 4.1.0 by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/115
* Address adversarial review + add AIIR agent-receipt profile (aiir/agent_receipt.v0.1) draft by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/120
* chore(deps): bump the actions-minor group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/117
* release: v1.4.0 by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/121


**Full Changelog**: https://github.com/invariant-systems-ai/aiir/compare/v1.3.0...v1.4.0

<!-- BEGIN:RELEASE_ATTESTATION -->
## Provenance & Verification

| Artifact | SHA-256 | Rekor log index | Provenance |
|---|---|---|---|
| [aiir-1.4.0-py3-none-any.whl](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-1.4.0-py3-none-any.whl) | `sha256:6174610c9cce95a873978248493605b9bb80791160bc21fafca68f1f77cefd69` | `1390247632` | [PyPI attestation](https://pypi.org/integrity/aiir/1.4.0/aiir-1.4.0-py3-none-any.whl/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-1.4.0-py3-none-any.whl.intoto.jsonl) |
| [aiir-1.4.0.tar.gz](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-1.4.0.tar.gz) | `sha256:36aa8cd0fe23da8603192ce92a07ad6ccea5cf1be36945074d5a89a4eaae868e` | `1390247692` | [PyPI attestation](https://pypi.org/integrity/aiir/1.4.0/aiir-1.4.0.tar.gz/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-1.4.0.tar.gz.intoto.jsonl) |
| [aiir-sbom.cdx.json](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-sbom.cdx.json) | `sha256:fe180d9ddbcfdec0ceb8e4417337f18eb3ac7709779db35591f5a1f352e3e0a2` |  -  | [GitHub release asset](https://github.com/invariant-systems-ai/aiir/releases/download/v1.4.0/aiir-sbom.cdx.json) |

```bash
# Verify the published release evidence for aiir==1.4.0
python scripts/verify-release-evidence.py 1.4.0
```
<!-- END:RELEASE_ATTESTATION -->

