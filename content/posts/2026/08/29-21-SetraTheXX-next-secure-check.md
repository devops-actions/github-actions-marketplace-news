---
title: Next Secure Check
date: 2026-08-29 21:55:08 +00:00
tags:
  - SetraTheXX
  - GitHub Actions
draft: false
repo: https://github.com/SetraTheXX/next-secure-check
marketplace: https://github.com/marketplace/actions/next-secure-check
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  next-secure-check is a Next.js-focused security checker that provides deterministic findings for common vulnerabilities before deployment. It uses rule-based pattern matching and AST analysis to scan local projects, offering insights into potential security risks without executing repository code or using AI at runtime. This tool helps developers identify and address security issues early in the development process.
---


Version updated for **https://github.com/SetraTheXX/next-secure-check** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/next-secure-check) to find the latest changes.

## Action Summary

next-secure-check is a Next.js-focused security checker that provides deterministic findings for common vulnerabilities before deployment. It uses rule-based pattern matching and AST analysis to scan local projects, offering insights into potential security risks without executing repository code or using AI at runtime. This tool helps developers identify and address security issues early in the development process.

## What's Changed

## What's changed

- The reusable composite Action now invokes the published next-secure-check@0.5.0 CLI.
- Existing inputs, outputs, summary behavior, SARIF handling, and the @v1 consumer reference remain compatible.
- The release follows the v0.5.0 npm publication and the successful security-check workflow.

## Validation

- GitHub Security Check run 33261300291 passed build, typecheck, lint, tests, release gate, security check, and reusable Action smoke.
- The four npm packages report version 0.5.0, with next-secure-check latest at 0.5.0.
