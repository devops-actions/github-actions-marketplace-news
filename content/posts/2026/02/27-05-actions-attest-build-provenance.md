---
title: Attest Build Provenance
date: 2026-02-27 05:54:07 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/attest-build-provenance
marketplace: https://github.com/marketplace/actions/attest-build-provenance
version: v4.1.0
dependentsNumber: "55,717"
actionType: Composite
---


Version updated for **https://github.com/actions/attest-build-provenance** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **55,717** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/attest-build-provenance) to find the latest changes.

## Action Summary

The `actions/attest-build-provenance` GitHub Action generates signed build provenance attestations for workflow artifacts, using the SLSA build provenance predicate in the in-toto format. It automates the process of binding artifact digests to their build metadata, creating verifiable signatures with Sigstore-issued certificates and associating attestations with the originating repository. This action ensures artifact integrity and supports traceability, aiding in secure software supply chain practices.

## Release notes

> [!NOTE]
> As of version 4, `actions/attest-build-provenance` is simply a wrapper on top of [`actions/attest`](https://github.com/actions/attest).
> 
> Existing applications may continue to use the `attest-build-provenance` action, but new implementations should use `actions/attest` instead.

## What's Changed
* Update RELEASE.md docs by @bdehamer in https://github.com/actions/attest-build-provenance/pull/836
* Bump `actions/attest` from 4.0.0 to 4.1.0 by @bdehamer in https://github.com/actions/attest-build-provenance/pull/838
  * Bump `@actions/attest` from 3.0.0 to 3.1.0 by @bdehamer in https://github.com/actions/attest/pull/362
  * Bump `@actions/attest` from 3.1.0 to 3.2.0 by @bdehamer in https://github.com/actions/attest/pull/365
  * Add new `subject-version` input for inclusion in storage record by @bdehamer in https://github.com/actions/attest/pull/364
  * Add storage record content to README by @bdehamer in https://github.com/actions/attest/pull/366


**Full Changelog**: https://github.com/actions/attest-build-provenance/compare/v4.0.0...v4.1.0
