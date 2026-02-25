---
title: Generate Generic Attestations
date: 2026-02-25 05:56:27 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/attest
marketplace: https://github.com/marketplace/actions/generate-generic-attestations
version: v4.0.0
dependentsNumber: "186"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/actions/attest** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **186** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-generic-attestations) to find the latest changes.

## Action Summary

The `actions/attest` GitHub Action automates the creation of signed attestations for workflow artifacts, linking an artifact and its metadata (e.g., build provenance or SBOM) using the in-toto format. It generates verifiable signatures via Sigstore certificates and uploads the attestations to the GitHub Attestations API, enabling secure artifact provenance and traceability. This action supports three attestation modes—Provenance, SBOM, and Custom—to accommodate various use cases and integrates seamlessly into GitHub workflows.

## Release notes

All of the capabilities of [`actions/attest-build-provenance`](https://github.com/actions/attest-build-provenance), and [`actions/attest-sbom`](https://github.com/actions/attest-sbom) have now been folded into `actions/attest`.

## What's Changed
* Bump @actions/core from 2.0.1 to 2.0.2 in the npm-production group by @dependabot[bot] in https://github.com/actions/attest/pull/323
* Bump tar from 7.4.3 to 7.5.6 by @dependabot[bot] in https://github.com/actions/attest/pull/333
* Bump @actions/github from 6.0.1 to 7.0.0 by @dependabot[bot] in https://github.com/actions/attest/pull/324
* Bump @actions/attest from 2.1.0 to 2.2.1 by @dependabot[bot] in https://github.com/actions/attest/pull/325
* Bump tar from 7.4.3 to 7.5.7 by @dependabot[bot] in https://github.com/actions/attest/pull/337
* Bump @isaacs/brace-expansion from 5.0.0 to 5.0.1 by @dependabot[bot] in https://github.com/actions/attest/pull/342
* Consolidate attestation actions by @bdehamer in https://github.com/actions/attest/pull/346
* ESM Conversion by @bdehamer in https://github.com/actions/attest/pull/347
* Test suite refactor by @bdehamer in https://github.com/actions/attest/pull/356
* Bump tar from 7.5.7 to 7.5.9 by @dependabot[bot] in https://github.com/actions/attest/pull/354
* Bump version in package.json to v4.0.0 by @bdehamer in https://github.com/actions/attest/pull/360


**Full Changelog**: https://github.com/actions/attest/compare/v3.2.0...v4.0.0
