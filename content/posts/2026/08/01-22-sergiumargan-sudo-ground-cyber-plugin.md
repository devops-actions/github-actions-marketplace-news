---
title: Ground Cyber Closure Audit
date: 2026-08-01 22:22:38 +00:00
tags:
  - sergiumargan-sudo
  - GitHub Actions
draft: false
repo: https://github.com/sergiumargan-sudo/ground-cyber-plugin
marketplace: https://github.com/marketplace/actions/ground-cyber-closure-audit
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Ground Cyber automates the verification of GitHub security alerts (secret scanning, Dependabot, and code scanning) to ensure closure with verifiable evidence. It provides a comprehensive report detailing which closed alerts are not verifiably closed, addressing issues like unresolved risks and platform-reported fixes without modifying alerts.
---


Version updated for **https://github.com/sergiumargan-sudo/ground-cyber-plugin** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ground-cyber-closure-audit) to find the latest changes.

## Action Summary

Ground Cyber automates the verification of GitHub security alerts (secret scanning, Dependabot, and code scanning) to ensure closure with verifiable evidence. It provides a comprehensive report detailing which closed alerts are not verifiably closed, addressing issues like unresolved risks and platform-reported fixes without modifying alerts.

## What's Changed

Answers a launch critique: for Dependabot and code scanning, "is this exploitable?" is not deterministically provable. v0.6 asks instead whether the closure claim was supported by structured evidence.

New opt-in tiered mode: a documented dismissal rationale scores GCS-2; one carrying a ticket, link, or explicit reachability claim scores GCS-1. Reasons stating the risk was not addressed (no_bandwidth, fix_started) are capped at GCS-2. No dismissal ever reaches GCS-0.

Default stays strict (v0.5 behaviour). The report always prints the rationale it relied on — Ground Cyber verifies that evidence was recorded, not that it is correct.
