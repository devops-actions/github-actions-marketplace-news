---
title: Validate ProductSpec files
date: 2026-07-14 08:14:14 +00:00
tags:
  - gokulrajaram
  - GitHub Actions
draft: false
repo: https://github.com/gokulrajaram/ProductSpec
marketplace: https://github.com/marketplace/actions/validate-productspec-files
version: v0.23.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ProductSpec is an open standard and harness that defines what software should build, how it should be completed, and when. It provides a portable way to define intent up front, attach evidence after work starts, and preserve changes when reality disagrees. This action helps teams and agents ensure that their implementations align with the original requirements and provides tools for validating Product Specs and recording work outcomes.
---


Version updated for **https://github.com/gokulrajaram/ProductSpec** to version **v0.23.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-productspec-files) to find the latest changes.

## Action Summary

ProductSpec is an open standard and harness that defines what software should build, how it should be completed, and when. It provides a portable way to define intent up front, attach evidence after work starts, and preserve changes when reality disagrees. This action helps teams and agents ensure that their implementations align with the original requirements and provides tools for validating Product Specs and recording work outcomes.

## What's Changed

This release improves parser round-trip fidelity and adds a concrete agent harness demo.

Fixed:
- Unknown frontmatter preservation now covers all key shapes, not only snake_case keys.
- Kebab-case keys, keys with spaces, quoted keys, and non-ASCII keys are preserved under parser_metadata.unknown_frontmatter instead of being silently dropped on serialize.

Added:
- 5-minute agent harness demo.
- Harness demo example with Product Spec, Agent Run, and Decision Trace.
- Contributor guidance for adding example Product Specs.

Note: npm publish for @productspec/parser@0.23.0 still needs to be run separately.
