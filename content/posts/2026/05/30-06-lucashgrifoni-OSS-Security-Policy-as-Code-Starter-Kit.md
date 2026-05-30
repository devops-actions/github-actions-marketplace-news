---
title: OSS Security Policy as Code
date: 2026-05-30 06:32:22 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v6.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v6.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

The "OSS Security Policy as Code Starter Kit" is a GitHub Action that automates the evaluation of open-source software repositories against predefined security policy profiles. It streamlines repository governance, CI/CD hardening, release posture assessment, and security evidence aggregation while generating human-readable and machine-readable reports (Markdown, JSON, SARIF) for compliance and assurance purposes. This tool is designed to provide explicit assurance grading and framework mappings, helping teams enforce security best practices and maintain a structured security posture for their repositories.

## What's Changed

## OSS Security Policy as Code Starter Kit v6.7.0

This release adds `ingest-insights`, the symmetric consumer for `emit-insights`: it reads, structurally validates, and reports a repository's self-reported OpenSSF Security Insights file. The change is additive and contract-safe — `evaluate`, the control catalog, and the report contracts are unchanged.

---

## Highlights

- **ingest-insights:** consume a target's OpenSSF Security Insights file. Discovers `SECURITY-INSIGHTS.yml` (or the kit's own `security-insights.yml`) under `--target`, or takes an explicit `--input`; validates it against the Security Insights 1.0 shape and reports the self-reported signals as human text or `--format json`. Output is labelled `provenance: self-reported` and never changes an `evaluate` gate. Exit codes: `0` found-valid or not-found, `1` found-but-invalid, `2` usage. See [`docs/insights-ingestion.md`](https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/blob/master/docs/insights-ingestion.md) and ADR-032.

---

## Improvements

- _No fixes or performance changes in this release._

---

## Notes

- Additive ecosystem-interop minor from the v7.x roadmap horizon, shipped early as a v6.x minor (the breaking `reports/2.0` default flip remains deferred to v7.0.0). CLI subcommands: 17 → 18; `reports/1.0` is still the default.

---

**License:** Apache-2.0.

