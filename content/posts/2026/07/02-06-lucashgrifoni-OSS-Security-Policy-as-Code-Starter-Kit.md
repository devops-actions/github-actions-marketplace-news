---
title: OSS Security Policy as Code
date: 2026-07-02 06:46:25 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v9.0.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v9.0.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v9.0.3

This release is the v9.0.3 release of the OSS Security Policy as Code Starter Kit (refine this line before publishing).

---

## Highlights

- _No feature-level changes in this release._

---

## Improvements

- retitle SAST-OSV-068 — the kit ingests OSV verdicts, it is not reachability-aware
- honor SOURCE_DATE_EPOCH for every outcome-affecting clock read; freeze the suite clock
- formalize SELF_ATTESTED in the published reports/2.0 schema (9.0.3)
- build Gemara state maps from pairs to clear a Snyk Code false positive

---

## Notes

- release 9.0.3 (#110)
- ADR-030 amendment re-grounding the v10.0.0 surface; flip ADR-021 to accepted
- suppress reviewed Snyk Code false positive via .snyk; keep the gate strict
- make Snyk Code + Snyk Open Source advisory (continue-on-error)

---

**License:** Apache-2.0.

