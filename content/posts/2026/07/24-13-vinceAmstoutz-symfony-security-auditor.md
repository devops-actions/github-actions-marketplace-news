---
title: Symfony Security Auditor
date: 2026-07-24 13:46:59 +00:00
tags:
  - vinceAmstoutz
  - GitHub Actions
draft: false
repo: https://github.com/vinceAmstoutz/symfony-security-auditor
marketplace: https://github.com/marketplace/actions/symfony-security-auditor
version: 1.17.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is an AI-powered security auditor for Symfony applications that automates the detection of application-level vulnerabilities missed by traditional SAST tools. It targets business logic flaws and multi-file attack chains, providing a comprehensive validation report in console, JSON, SARIF, HTML, or Markdown formats. The action uses adversarial "Attacker" and skeptical "Reviewer" agents to identify and cull false positives over three iterations, ensuring a validated report for security audits in Symfony projects.
---


Version updated for **https://github.com/vinceAmstoutz/symfony-security-auditor** to version **1.17.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/symfony-security-auditor) to find the latest changes.

## Action Summary

This GitHub Action is an AI-powered security auditor for Symfony applications that automates the detection of application-level vulnerabilities missed by traditional SAST tools. It targets business logic flaws and multi-file attack chains, providing a comprehensive validation report in console, JSON, SARIF, HTML, or Markdown formats. The action uses adversarial "Attacker" and skeptical "Reviewer" agents to identify and cull false positives over three iterations, ensuring a validated report for security audits in Symfony projects.

## What's Changed

## What's Changed

- ci: add 7-day Dependabot cooldown by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/commit/696801b
- fix(standalone): windows download errors by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/192
- feat(standalone): one liner installation by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/191
- fix(standalone): resolve self-update binary path on macOS by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/194
- test: relax fork/boot slow-test bound by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/195
- feat(command): add scriptable options by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/193
- feat(command): add a doctor preflight command by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/196
- feat(standalone): notify when a newer release is available by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/197
- fix(standalone): throttle failed update checks too by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/199
- fix(standalone): skip update notice after update by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/200
- fix(standalone): honor SSA_NO_UPDATE_CHECK=0 by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/206
- fix(standalone): SSA_INIT fallback under POSIX sh by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/198
- fix(standalone): fail fast on unsupported platforms by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/201
- docs: correct Git Bash install guidance by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/203
- feat(command): add init --force by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/204
- docs: scope PHP/Symfony requirement to the bundle by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/208
- docs: FAQ on auditing older Symfony and PHP by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/209
- docs: correct init options adoption claim by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/207
- fix(command): normalize provider slugs in init by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/202
- fix(standalone): locate only executable binaries by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/205
- chore: release 1.17.0 by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/210

**Full Changelog**: https://github.com/vinceAmstoutz/symfony-security-auditor/compare/1.16.0...1.17.0
