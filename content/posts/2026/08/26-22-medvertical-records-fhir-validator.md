---
title: FHIR Validator
date: 2026-08-26 22:55:55 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.6.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action provides a FHIR validator for CI pipelines, GitHub Actions, and standalone Node.js use. It validates FHIR JSON, XML, and NDJSON resources against StructureDefinitions, FHIRPath invariants, terminology bindings, references, slicing, extensions, Bundle rules, metadata, and custom rules without requiring a JVM or database. The action supports multiple FHIR versions and provides options for profile validation, output format, exit threshold, and file inclusion/exclusion.
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.6.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## Action Summary

This GitHub Action provides a FHIR validator for CI pipelines, GitHub Actions, and standalone Node.js use. It validates FHIR JSON, XML, and NDJSON resources against StructureDefinitions, FHIRPath invariants, terminology bindings, references, slicing, extensions, Bundle rules, metadata, and custom rules without requiring a JVM or database. The action supports multiple FHIR versions and provides options for profile validation, output format, exit threshold, and file inclusion/exclusion.

## What's Changed

npm tarball release for `@records-fhir/validator@0.6.2`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.6.2
```

## What's new in 0.6.2

Patch release closing Bundle, XML, and SNOMED edition gaps and adding
reproducible release evidence for every supported FHIR release. There are no
intentional breaking changes.

### Fixed

- Restored terminology and binding validation for resources nested in Bundle
  entries. Duplicate parent/child findings are collapsed without losing the
  resource-qualified path needed to locate the failing entry, while findings
  from separate Bundle entry indices remain independent.
- Forwarded `Coding.version` through terminology validation and routed SNOMED
  CT edition URIs only to servers that explicitly advertise the requested
  module through `snomedEditions`; that declaration alone makes the scoped
  server response authoritative. Edition selection is now part of immutable
  runtime snapshots and terminology cache keys, authoritative negative
  responses remain invalid, and deep datatype traversal preserves the requested
  version. ValueSet binding delegation sends `systemVersion`, version-specific
  package loads cannot replace the unversioned CodeSystem cache, and
  release-incompatible defaults fall back to an enabled generic server. A
  missing edition route emits an actionable diagnostic instead of silently using
  the wrong server.
- Hardened FHIR XML conversion and the conformance resource loader so
  namespace-aware XML resources, manifest inputs, and supporting resources use
  the same bounded parser and reach validation as proper FHIR JSON objects.
  Invalid leading-plus numeric lexemes stay visible to structural validation,
  and repeating primitive sidecars remain aligned with their missing values so
  `mustHaveValue` and `valueAlternatives` apply per occurrence.

### Quality

- Added explicit JSON/XML and R4/R4B/R5/R6 conformance lanes, including small
  clean and defect corpora for R4B and R6.
- Added a reproducible validator performance baseline and a regression gate
  with absolute ceilings, noise-floor handling, and report provenance checks.
- Added FHIRSchema dual-path report freshness and provenance gates. The release
  keeps StructureDefinition validation authoritative; FHIRSchema remains an
  evidence-only comparison path until independently confirmed gaps justify a
  runtime change.
- Fixed the public-repository export boundary so its policy module is included
  and the exported tree executes the privacy audit during regression tests.

## Matched npm tarballs

- `@records-fhir/validator@0.6.2` — also tagged `validator-v0.6.2`
- `@records-fhir/validation-types@0.1.9`

The matching GitHub Action release (if any) is published separately under tag `v0.6.2` and is not auto-synced; this release covers the npm package only.
