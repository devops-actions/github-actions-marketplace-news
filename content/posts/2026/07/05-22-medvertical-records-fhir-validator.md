---
title: FHIR Validator
date: 2026-07-05 22:04:13 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: validator-v0.4.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **validator-v0.4.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## What's Changed

npm tarball release for `@records-fhir/validator@0.4.2`. Synced from medvertical/records monorepo.

## Install

```
npm install @records-fhir/validator@0.4.2
```

## What's new in 0.4.2

Patch release for validator architecture boundaries, evidence policy, and
maintainability after the 0.4.1 evidence release.

### Added

- Added stable `host` and `conformance` package surfaces for embedding and
  evidence tooling, keeping repository consumers off deprecated implementation
  subpaths.
- Added `dedupeIssuesWithTrace()` so duplicate-suppression decisions expose the
  named policy rule that removed an issue.
- Added an explicit FHIR Schema runtime policy export that keeps the graph path
  evidence-only until Java/reference and dual-path gates justify promotion.

### Changed

- Hardened public-export and mirror-import architecture guards so new internal
  validator exports or repository imports fail fast.
- Split terminology remote CodeSystem budget handling out of the API client and
  kept the fail-open budget reason traceable.
- Split remote CodeSystem budget aggregation tests into focused coverage.

### Documentation

- Documented validator fallback, fail-open, fail-closed, legacy compatibility,
  and release-gate guardrails.

### Verification

- Verified with merged PR #252 CI, main CI, validator build, OSS boundary audit,
  OSS package smoke, architecture guards, focused Vitest suites, and npm publish
  dry-run.

## Matched npm tarballs

- `@records-fhir/validator@0.4.2` — also tagged `validator-v0.4.2`
- `@records-fhir/validation-types@0.1.5`

The matching GitHub Action release (if any) is published separately under tag `v0.4.2` and is not auto-synced; this release covers the npm package only.
