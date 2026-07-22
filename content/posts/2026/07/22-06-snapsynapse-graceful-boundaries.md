---
title: Graceful Boundaries Conformance Check
date: 2026-07-22 06:07:46 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/graceful-boundaries
marketplace: https://github.com/marketplace/actions/graceful-boundaries-conformance-check
version: v1.5.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Graceful Boundaries is a specification for how services communicate their operational limits to humans and autonomous agents. It addresses three gaps in existing standards, providing proactive discovery of limits before they are hit, structured refusal with explanatory details and next steps, and constructive guidance. The specification applies to every HTTP error class, not just rate limits.
---


Version updated for **https://github.com/snapsynapse/graceful-boundaries** to version **v1.5.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graceful-boundaries-conformance-check) to find the latest changes.

## Action Summary

Graceful Boundaries is a specification for how services communicate their operational limits to humans and autonomous agents. It addresses three gaps in existing standards, providing proactive discovery of limits before they are hit, structured refusal with explanatory details and next steps, and constructive guidance. The specification applies to every HTTP error class, not just rate limits.

## What's Changed

## Fixed

- Corrected the canonical public specification URL from the nonexistent `/spec` route to the deployed `/spec.md` resource across schemas, examples, the manifest, and release validation.
- Added the canonical specification to `sitemap.xml` and refreshed sitemap dates.
- Extended release-contract tests so future canonical URL drift fails CI.

This patch does not change normative requirements or conformance-checker behavior.

## Verification

- 259 tests pass.
- The landing page renders with v1.5.3 metadata and no console errors.
- The npm artifact contains 11 expected files and has SHA-256 `24433f9fb7998dbef89d54298a88ab9cbf6ba2b9f22650c2b299518740066a73`.
- An adversarial regression restoring `/spec` in a schema is rejected by the release-contract tests.

