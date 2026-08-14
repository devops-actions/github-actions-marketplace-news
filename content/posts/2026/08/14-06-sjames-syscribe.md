---
title: Validate Syscribe Model
date: 2026-08-14 06:04:39 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.35.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Syscribe automates the conversion of SysMLv2 models into human-readable Markdown files. It solves problems related to understanding complex models, generating model documentation, and improving collaboration by enabling LLMs to interact with system requirements and architecture decisions through plain text files. The action provides capabilities for managing a wide range of model elements, including Requirements, TestCases, and Architecture Decision Records, while maintaining traceability across the project lifecycle.
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.35.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## Action Summary

Syscribe automates the conversion of SysMLv2 models into human-readable Markdown files. It solves problems related to understanding complex models, generating model documentation, and improving collaboration by enabling LLMs to interact with system requirements and architecture decisions through plain text files. The action provides capabilities for managing a wide range of model elements, including Requirements, TestCases, and Architecture Decision Records, while maintaining traceability across the project lifecycle.

## What's Changed

## What's Changed
* feat(sysmlv2): lift @Syscribe* metadata annotations for domain, integrity level, shortName, and implementedBy (#92) by @sjames in https://github.com/sjames/syscribe/pull/93
* feat(sysmlv2): lift doc comments and connect endpoints (#94, #95) by @sjames in https://github.com/sjames/syscribe/pull/96
* fix: n2 axis, doc lifts, connect resolution, W600 suppression, template PlanningItem (#97-#102) by @sjames in https://github.com/sjames/syscribe/pull/103
* fix(sysmlv2): W542 truncated-connect warning + scoped typedBy: resolution for W600 (#104, #105) by @sjames in https://github.com/sjames/syscribe/pull/106
* fix(sysmlv2): widen resolve_scoped_ref to W007 and graph.rs's TypedBy edge by @sjames in https://github.com/sjames/syscribe/pull/108


**Full Changelog**: https://github.com/sjames/syscribe/compare/v0.34.0...v0.35.0
