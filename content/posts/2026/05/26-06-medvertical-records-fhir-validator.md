---
title: FHIR Validator
date: 2026-05-26 06:26:10 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.1.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.1.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## Action Summary

The Records FHIR Validator is a TypeScript-based tool designed for validating FHIR JSON resources in CI pipelines, GitHub Actions, and standalone Node.js environments. It automates the process of checking compliance with FHIR standards, including StructureDefinitions, FHIRPath invariants, terminology bindings, and custom rules, without relying on a JVM, database, or external server. This action streamlines the validation of healthcare data by offering lightweight, flexible, and customizable capabilities for developers and organizations working with FHIR resources.

## What's Changed

npm tarball release for `@records-fhir/validator@0.1.8`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.1.8
```

## What's new in 0.1.8

Patch release focused on validation precision and EHDS/large-server readiness.
Released with `@records-fhir/validation-types` 0.1.2.

### Fixes

- Reduced false positives in anomaly, reference, MustSupport, duplicate-event,
  temporal-gap, and clinical coding checks across large FHIR servers.
- Improved terminology behavior for SNOMED, UCUM, display variants, unsupported
  ValueSet filters, inactive-code disagreements, nested ValueSets, and
  CodeableConcept arrays.
- Kept display mismatches and profile-fixed binding diagnostics from becoming
  noisy hard failures when terminology servers disagree or omit optional
  metadata.
- Hardened package/profile resolution around cached package scans, Simplifier
  metadata, Ontoserver responses, and ART-DECOR/HAPI comparison inputs.

### Quality

- Added regression coverage for terminology display variants, inactive fallback
  behavior, duplicate diagnostic reports, value range units, and contextual
  MustSupport skips.
- Reworked validation internals toward explicit resource, issue, pipeline, and
  terminology payload types so the package/server mirror has fewer broad casts
  and less drift risk.

## Matched npm tarballs

- `@records-fhir/validator@0.1.8` — also tagged `validator-v0.1.8`
- `@records-fhir/validation-types@0.1.2`

The matching GitHub Action release (if any) is published separately under tag `v0.1.8` and is not auto-synced; this release covers the npm package only.
