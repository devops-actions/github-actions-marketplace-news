---
title: go-skeptic
date: 2026-08-27 17:36:06 +00:00
tags:
  - TGPSKI
  - GitHub Actions
draft: false
repo: https://github.com/TGPSKI/skeptic
marketplace: https://github.com/marketplace/actions/go-skeptic
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `skeptic` is a local repository trust auditor designed to detect structural trust boundary vulnerabilities that enable cascading supply chain compromise. It targets attack-enabling conditions rather than artifacts, offering a comprehensive view of vulnerability surfaces in CI/CD pipelines and agentic tooling. The action automates the scanning process using a standardized rule set and provides mechanisms for ingesting threat intelligence and managing a threat artifact corpus.
---


Version updated for **https://github.com/TGPSKI/skeptic** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-skeptic) to find the latest changes.

## Action Summary

`skeptic` is a local repository trust auditor designed to detect structural trust boundary vulnerabilities that enable cascading supply chain compromise. It targets attack-enabling conditions rather than artifacts, offering a comprehensive view of vulnerability surfaces in CI/CD pipelines and agentic tooling. The action automates the scanning process using a standardized rule set and provides mechanisms for ingesting threat intelligence and managing a threat artifact corpus.

## What's Changed


### Detection

- Remove `POL-GHA-001`; `SCM-TRUST-001` is now the canonical mutable GitHub
  Action reference detection (#64).
- Move `CI-PRT-001` and `CI-PRT-002` from unconditional line patterns to
  workflow-level checks that require a privileged trigger plus unsafe checkout,
  repository-code execution, risky commands, or write permissions (#90).
- Restrict `POL-CLOUDID-001` wildcard matching to OIDC trust-policy claims, and
  scope `CLOUD-ID-001` to IAM and RBAC policy paths and context (#91, #64).

### Infrastructure

- Roll up co-located duplicate findings under a primary result with
  `related_rule_ids`, and score only the rolled-up set. Correlations are
  suppressed when all of their constituent findings are waived (#63).
- Record stable finding identities in file-pinned waivers. Waiver refreshes now
  stop for review when a file introduces a new finding while allowing unchanged
  accepted finding sets to be re-pinned mechanically (#100).
- Make release preparation select a successful CI run for the release commit
  instead of failing on a newer label-triggered skipped run.

### CLI

- Add `--sarif-base-path`, defaulting to the detected Git repository root, and
  emit repository-relative SARIF artifact URIs with `%SRCROOT%` metadata. SARIF
  tool links now derive from module build metadata (#62).
- Give every subcommand a structured help header with a synopsis and runnable
  example (#71).

### Documentation

- Document skeptic as a scanner, threat-intelligence pipeline, and repair-eval
  oracle; add an audience-oriented documentation index, repair corpus guide,
  and adjacent-tool comparison (#70).
