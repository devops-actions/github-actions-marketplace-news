---
title: FHIR Validator
date: 2026-07-01 22:43:19 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.4.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## What's Changed

npm tarball release for `@records-fhir/validator@0.4.1`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.4.1
```

## What's new in 0.4.1

Patch release for the standalone validator evidence lanes and MII reference
workflow. Released with `@records-fhir/validation-types` 0.1.5.

### Added

- Added validator claim summary generation for publishing the current HL7,
  MII reference, and FHIR Schema dual-path evidence in one machine-readable
  artifact.
- Added FHIR Schema dual-path action reporting so unconfirmed graph/reference
  buckets remain explicit follow-up work instead of hidden parity debt.
- Added package-backed terminology diagnostics and local terminology server
  helpers for deterministic MII/FHIR Schema quality lanes.

### Changed

- Hardened the MII reference triangulation workflow with reference-health
  probes, policy-rule extraction, skip taxonomy, and failed-profile prewarm
  details.
- Refreshed the public validator documentation around the 2026-07-01 evidence:
  496/496 HL7 executable JSON comparisons, 231/231 measured MII reference
  parity, and 555-fixture FHIR Schema dual-path coverage.
- Tightened FHIR Schema graph slicing, reference-target extraction, and pattern
  diagnostics while keeping the graph path in parallel evidence mode.

### Fixed

- Fixed MII package relevance detection so package names containing substrings
  such as `isik` are not misclassified as Gematik ISiK packages.
- Fixed nested profile slice scoping and choice/FHIRPath edge cases uncovered
  by the MII and FHIR Schema dual-path lanes.

### Verification

- Verified with repository lint, stable tests, targeted validator Vitest
  suites, full affected conformance, MII reference gate, HL7 parity gate, and
  FHIR Schema dual-path report generation.

## Matched npm tarballs

- `@records-fhir/validator@0.4.1` — also tagged `validator-v0.4.1`
- `@records-fhir/validation-types@0.1.5`

The matching GitHub Action release (if any) is published separately under tag `v0.4.1` and is not auto-synced; this release covers the npm package only.
