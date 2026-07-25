---
title: Draugr Security Scan
date: 2026-07-25 06:58:25 +00:00
tags:
  - draugr-dev
  - GitHub Actions
draft: false
repo: https://github.com/draugr-dev/draugr
marketplace: https://github.com/marketplace/actions/draugr-security-scan
version: v0.28.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Draugr is an open-source security scanning orchestration tool that helps developers manage and prioritize their software security controls. It automatically infers applicable security controls based on developer-provided descriptors, runs the right scanner for each control, and produces detailed reports in SARIF format. The action supports various scanners including Trivy, Semgrep, Gitleaks, and Gosec, and provides a prioritized verdict with severity rankings to guide remediation efforts.
---


Version updated for **https://github.com/draugr-dev/draugr** to version **v0.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/draugr-security-scan) to find the latest changes.

## Action Summary

Draugr is an open-source security scanning orchestration tool that helps developers manage and prioritize their software security controls. It automatically infers applicable security controls based on developer-provided descriptors, runs the right scanner for each control, and produces detailed reports in SARIF format. The action supports various scanners including Trivy, Semgrep, Gitleaks, and Gosec, and provides a prioritized verdict with severity rankings to guide remediation efforts.

## What's Changed


### Added

- **New `dast` control — dynamic application security testing.** Point a component's `hosts:`
  at a running (e.g. staging) endpoint and enable `dast` in your Saga to probe it for runtime
  issues static analysis can't see: exposures, misconfigurations, information disclosure,
  outdated libraries, default credentials. It's backed by [Nuclei](https://github.com/projectdiscovery/nuclei)
  — a single Go binary, so nothing to run in a container — and complements the `headers` control
  (which keeps ownership of HTTP security-header checks). Install it with
  `draugr tools install nuclei`; `dast` is opt-in, like every component control. It runs Nuclei's
  default (safe) template set — no active/attack scanning.



