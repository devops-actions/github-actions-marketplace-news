---
title: FHIR Validator
date: 2026-06-02 06:56:16 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.1.11
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.1.11**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## What's Changed

npm tarball release for `@records-fhir/validator@0.1.11`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.1.11
```

## What's new in 0.1.11

Patch release for the standalone OSS validator package after the latest Firely
and public-server validation runs. Released with
`@records-fhir/validation-types` 0.1.4.

### Fixes

- Closed the remaining HL7/HAPI validator-CLI capability gaps around profile
  fallback, bundle-entry validation, and multi-aspect strictness handling.
- Preserved code-aware display equivalence checks by passing the full code
  context into display normalization.
- Kept the EHDS EPS package selection stable while retaining the pinned
  transitive reference closure.

### Maintenance

- Refreshed direct runtime dependencies: `axios`, `date-fns`, `fhirpath`, and
  `tar`.
- Verified the package boundary, TypeScript build, and OSS smoke checks before
  publishing.

## Matched npm tarballs

- `@records-fhir/validator@0.1.11` — also tagged `validator-v0.1.11`
- `@records-fhir/validation-types@0.1.4`

The matching GitHub Action release (if any) is published separately under tag `v0.1.11` and is not auto-synced; this release covers the npm package only.
