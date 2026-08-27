---
title: Assay - AI Agent Security
date: 2026-08-27 07:55:12 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/assay-action
marketplace: https://github.com/marketplace/actions/assay-ai-agent-security
version: v3.1.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action helps developers verify and lint evidence collected from their CI tests to ensure they comply with security policies. It automates the process of recording and analyzing evidence, providing detailed reports and reviews that can help maintain code quality and protect against unauthorized access or vulnerabilities.
---


Version updated for **https://github.com/Rul1an/assay-action** to version **v3.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/assay-ai-agent-security) to find the latest changes.

## Action Summary

This GitHub Action helps developers verify and lint evidence collected from their CI tests to ensure they comply with security policies. It automates the process of recording and analyzing evidence, providing detailed reports and reviews that can help maintain code quality and protect against unauthorized access or vulnerabilities.

## What's Changed

Assay Action v3.1.0 adds a bounded, digest-bound evidence index for downstream verification.

- Adds optional input `evidence_mode: optional|required` (default: `optional`).
- Adds outputs `evidence_state`, `evidence_index_path`, and `evidence_index_digest`.
- Emits a deterministic completed-empty index when optional discovery finds no bundles.
- Fails explicitly on invalid modes, path violations, integrity mismatches, and the 101st bundle instead of publishing a partial clean result.
- Routes discovered and sandbox-command evidence through the same bounded index and verification path.
- Adds an immutable-tag canary that binds the dispatched tag and expected commit before running the candidate action.

Compatibility: existing v3 callers remain optional by default. Legacy `verified` remains available; on a completed run with no evidence it is explicitly `false` rather than an empty value.

Behavioral note: `sandbox-command` evidence now enters the same verification and `fail_on` lint path as discovered bundles. A sandbox run with invalid evidence or matching lint findings can therefore fail where the previous unverified sandbox path completed successfully.

Non-claims: `evidence_state=verified` proves integrity processing completed for the indexed bytes. It does not prove that later policy or lint gates passed, that the evidence is semantically sufficient, or that the action job itself independently validates evidence on behalf of a consumer.

