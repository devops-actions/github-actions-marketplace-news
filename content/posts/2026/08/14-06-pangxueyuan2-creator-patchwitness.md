---
title: PatchWitness Gate
date: 2026-08-14 06:13:16 +00:00
tags:
  - pangxueyuan2-creator
  - GitHub Actions
draft: false
repo: https://github.com/pangxueyuan2-creator/patchwitness
marketplace: https://github.com/marketplace/actions/patchwitness-gate
version: v0.2.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PatchWitness is an AI-driven tool that automates the verification of AI-generated code changes by providing independent evidence and policy gates. It helps reviewers verify scope, verifier integrity, real check execution, secrets, dependency impact, and portable evidence without relying on LLMs. PatchWitness generates Change Passports for every change, which can be offline-verifiable. Users can test its functionality with a 60-second demo that demonstrates how it blocks protected CI workflows when tests fail or the policy is violated.
---


Version updated for **https://github.com/pangxueyuan2-creator/patchwitness** to version **v0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchwitness-gate) to find the latest changes.

## Action Summary

PatchWitness is an AI-driven tool that automates the verification of AI-generated code changes by providing independent evidence and policy gates. It helps reviewers verify scope, verifier integrity, real check execution, secrets, dependency impact, and portable evidence without relying on LLMs. PatchWitness generates Change Passports for every change, which can be offline-verifiable. Users can test its functionality with a 60-second demo that demonstrates how it blocks protected CI workflows when tests fail or the policy is violated.

## What's Changed

## Patch release

### Fixed
- Preserved the advisory Copilot CLI PowerShell hook’s documented zero exit status when it runs under a strict PowerShell caller, while retaining status output on stderr.
- Excluded local virtual environments and generated build directories from source distributions.

### Added
- Added Windows-only regression coverage that runs the published PowerShell hook against a synthetic Git change and verifies the resulting Change Passport.

### Security
- Updated the pinned CodeQL action revision used for Python security analysis.

### Verification
The tag-triggered release workflow passed the complete quality gate, source/wheel build, metadata and manifest validation, clean-install wheel smoke test, digest generation, provenance attestation, and GitHub Release upload.

> This release provides direct PowerShell-hook compatibility evidence only. It does not claim GitHub Copilot CLI `sessionEnd` event-dispatch validation, semantic correctness, external adoption, or PyPI publication.

**Full Changelog**: https://github.com/pangxueyuan2-creator/patchwitness/compare/v0.2.1...v0.2.2
