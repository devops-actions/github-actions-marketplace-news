---
title: FHIR Validator
date: 2026-06-30 15:10:36 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## What's Changed

npm tarball release for `@records-fhir/validator@0.4.0`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.4.0
```

## What's new in 0.4.0

Runtime slicing and evidence-gate update for the standalone validator and
GitHub Action. Released with `@records-fhir/validation-types` 0.1.5.

### Added

- Added runtime support for differential-only slices that inherit slicing from
  their base or snapshot when slice elements do not redeclare slicing locally.
- Added local-first FHIR Schema dual-path evidence reporting with exported
  normalization helpers for comparing Records, graph-derived validation, and
  Java OperationOutcome baselines.
- Added focused regression coverage for required slices, closed slicing,
  `memberOf` prechecks, and FHIR Schema StructureDefinition merge behavior.

### Changed

- Merge differential and base StructureDefinition elements by slice-aware
  identity instead of path alone, keeping same-path slices from sharing
  cardinality or metadata by accident.
- Normalize known equivalent closed-slicing diagnostics in the evidence lane so
  Java pattern differences are measured without hiding real parity gaps.
- Refresh README evidence around the current MII/ISiK triangulation signal and
  scoped FHIR Schema dual-path status.

### Fixed

- Fixed required-slice detection for profiled differential-only slices where
  the slice exists in the differential but the slicing declaration is inherited.
- Fixed local terminology/memberOf precheck diagnostics so missing local
  expansions produce stable validation signals without depending on remote TX
  availability.

### Verification

- Verified locally with validator typecheck/build, targeted Vitest suites, MII
  reference gate, validator performance gate, and repository lint.

## Matched npm tarballs

- `@records-fhir/validator@0.4.0` — also tagged `validator-v0.4.0`
- `@records-fhir/validation-types@0.1.5`

The matching GitHub Action release (if any) is published separately under tag `v0.4.0` and is not auto-synced; this release covers the npm package only.
