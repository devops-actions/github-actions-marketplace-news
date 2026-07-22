---
title: FHIR Validator
date: 2026-07-22 06:32:40 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.4.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is a TypeScript-based FHIR validator designed to automate validation of FHIR JSON resources in CI pipelines, GitHub Actions, or standalone Node.js environments. It supports multiple FHIR versions (R4, R4B, R5, R6) and provides features such as validating against StructureDefinitions, FHIRPath expressions, terminology bindings, references, slicing, extensions, Bundle rules, metadata, and custom rules without requiring a JVM or database. The action is available for both GitHub Actions pinning using floating tags and exact version pins, ensuring reproducibility and auditability.
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.4.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## Action Summary

This GitHub Action is a TypeScript-based FHIR validator designed to automate validation of FHIR JSON resources in CI pipelines, GitHub Actions, or standalone Node.js environments. It supports multiple FHIR versions (R4, R4B, R5, R6) and provides features such as validating against StructureDefinitions, FHIRPath expressions, terminology bindings, references, slicing, extensions, Bundle rules, metadata, and custom rules without requiring a JVM or database. The action is available for both GitHub Actions pinning using floating tags and exact version pins, ensuring reproducibility and auditability.

## What's Changed

npm tarball release for `@records-fhir/validator@0.4.4`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.4.4
```

## What's new in 0.4.4

Patch release hardening production metadata validation and terminology
expansion without changing the public validation API.

### Fixed

- Replaced runtime directory imports with explicit ESM entry files so packaged
  metadata validation works in the production Node.js container.
- Propagated metadata-engine exceptions to the host instead of representing
  runtime failures as FHIR resource findings.
- Traversed hierarchical terminology-server `$expand` results recursively, so
  nested valid codes such as Questionnaire item types are recognized.
- Accepted malformed primitive `meta` input as a normal structural metadata
  finding instead of allowing completeness checks to throw.

### Verification

- HL7 JSON parity: 536/536 (100.0%), 0 failed, 0 skipped, 0 errors.
- MII 2026 reference parity: 231/231 measured (100.0%), 22 classified skips,
  128/128 profiles prewarmed, and 0 FHIRPath constraint skips.
- Verified the packed public package by executing real metadata validation and
  rejecting any internal-error or directory-import finding.

## Matched npm tarballs

- `@records-fhir/validator@0.4.4` — also tagged `validator-v0.4.4`
- `@records-fhir/validation-types@0.1.5`

The matching GitHub Action release (if any) is published separately under tag `v0.4.4` and is not auto-synced; this release covers the npm package only.
