---
title: AIIR — AI Integrity Receipts
date: 2026-03-11 21:46:02 +00:00
tags:
  - invariant-systems-ai
  - GitHub Actions
draft: false
repo: https://github.com/invariant-systems-ai/aiir
marketplace: https://github.com/marketplace/actions/aiir-ai-integrity-receipts
version: v1.2.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/invariant-systems-ai/aiir** to version **v1.2.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aiir-ai-integrity-receipts) to find the latest changes.

## Action Summary

AIIR (AI Integrity Receipts) is a GitHub Action designed to provide verifiable documentation of AI-assisted code contributions and ensure compliance with transparency and audit requirements like the EU AI Act. It automates the generation of tamper-evident receipts for each commit, evaluates them against policies, and produces signed Verification Summary Attestations (VSAs) for release verification. This helps organizations maintain audit trails, meet compliance standards, and enhance accountability in software development workflows.

## Release notes

## Install

```bash
pip install aiir==1.2.5
```

**GitHub Action** — `uses: invariant-systems-ai/aiir@v1`
**Docker** — `docker run ghcr.io/invariant-systems-ai/aiir:1.2.5`
**GitLab CI/CD** — [Catalog component](https://gitlab.com/explore/catalog/invariant-systems/aiir)

<!-- Release notes generated using configuration in .github/release.yml at v1.2.5 -->

## What's Changed
### 🧩 Other Changes
* chore: harden for OSSF Scorecard 10/10 by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/11
* chore: local CI preflight, sigstore typing fix, Rust crate publish metadata by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/12
* chore(sdks/rust): add crate metadata + README for crates.io publishing by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/15
* chore: update CODEOWNERS reviewer to @InvariantSystems by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/16
* fix: reconcile README test count to 1,852 by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/17
* feat(dogfood): commit CBOR sidecars + explain cross-verification by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/14
* fix: security hardening from hostile review by @InvariantSystems in https://github.com/invariant-systems-ai/aiir/pull/18

## New Contributors
* @InvariantSystems made their first contribution in https://github.com/invariant-systems-ai/aiir/pull/11

**Full Changelog**: https://github.com/invariant-systems-ai/aiir/compare/v1.2.4...v1.2.5
