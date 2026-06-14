---
title: AIIR — AI Integrity Receipts
date: 2026-06-14 06:43:51 +00:00
tags:
  - invariant-systems-ai
  - GitHub Actions
draft: false
repo: https://github.com/invariant-systems-ai/aiir
marketplace: https://github.com/marketplace/actions/aiir-ai-integrity-receipts
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/invariant-systems-ai/aiir** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aiir-ai-integrity-receipts) to find the latest changes.

## What's Changed

## Install

```bash
pip install aiir==1.7.0
```

**GitHub Action** — `uses: invariant-systems-ai/aiir@v1`
**Docker** — `docker run ghcr.io/invariant-systems-ai/aiir:1.7.0`
**GitLab CI/CD** — [Catalog component](https://gitlab.com/explore/catalog/invariant-systems/aiir)

<!-- Release notes generated using configuration in .github/release.yml at v1.7.0 -->

## What's Changed
### 🧩 Other Changes
* ci(release): use npm trusted publishing by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/169
* ci(release): require npm trusted publishing toolchain by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/170
* fix(gitlab): align evidence template include guidance by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/171
* detect: recognize Assisted-by trailers by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/173
* Fix AIIR citation author surname by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/178
* chore: session cleanup — audit hardening, agent-receipt wedge, CLI restructure foundation by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/179
* feat: ship release evidence bundle by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/174
* chore(deps): bump the actions-minor group with 3 updates by @dependabot[bot] in https://github.com/invariant-systems-ai/aiir/pull/175
* docs: cut duplication and tighten prose (first cognitive-density pass) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/180
* docs: restructure into an IA with a slim README front door by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/181
* chore(release): 1.7.0 (PyPI + npm), VS Code extension 0.6.0 by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/182
* fix(release): paginate ci-gate check-runs query (per_page=100) by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/183


**Full Changelog**: https://github.com/invariant-systems-ai/aiir/compare/v1.6.0...v1.7.0

<!-- BEGIN:RELEASE_ATTESTATION -->
## Provenance & Verification

| Artifact | SHA-256 | Rekor log index | Provenance |
|---|---|---|---|
| [aiir-1.7.0-py3-none-any.whl](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-1.7.0-py3-none-any.whl) | `sha256:f4dd38316b4cc504b36f0edd05002be1b736052df055e038bc16b2f4dec09526` | `1810231844` | [PyPI attestation](https://pypi.org/integrity/aiir/1.7.0/aiir-1.7.0-py3-none-any.whl/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-1.7.0-py3-none-any.whl.intoto.jsonl) |
| [aiir-1.7.0.tar.gz](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-1.7.0.tar.gz) | `sha256:23651cec35738c5aae4db6a70effe019d67bf481cbb604336143425ea31baa7f` | `1810231851` | [PyPI attestation](https://pypi.org/integrity/aiir/1.7.0/aiir-1.7.0.tar.gz/provenance) · [GitHub bundle](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-1.7.0.tar.gz.intoto.jsonl) |
| [aiir-sbom.cdx.json](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-sbom.cdx.json) | `sha256:42bf00506bafe8832c473b1473c11c6356f23b760cdbe876dca8023a511bf77d` |  -  | [GitHub release asset](https://github.com/invariant-systems-ai/aiir/releases/download/v1.7.0/aiir-sbom.cdx.json) |

```bash
# Verify the published release evidence for aiir==1.7.0
python scripts/verify-release-evidence.py 1.7.0
```
<!-- END:RELEASE_ATTESTATION -->

