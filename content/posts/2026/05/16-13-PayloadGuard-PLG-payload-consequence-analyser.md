---
title: PayloadGuard
date: 2026-05-16 13:58:09 +00:00
tags:
  - PayloadGuard-PLG
  - GitHub Actions
draft: false
repo: https://github.com/PayloadGuard-PLG/payload-consequence-analyser
marketplace: https://github.com/marketplace/actions/payloadguard
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PayloadGuard-PLG/payload-consequence-analyser** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/payloadguard) to find the latest changes.

## Action Summary

**PayloadGuard** is a GitHub Action designed to analyze pull requests for potential risks by evaluating changes across five layers of analysis, such as file modifications, structural drift, and semantic transparency. It automates the detection of deceptive or potentially destructive changes hidden in code diffs, producing a verdict ("SAFE," "REVIEW," "CAUTION," or "DESTRUCTIVE") and generating detailed forensic reports. This action helps prevent harmful code from being merged by integrating with CI pipelines to enforce branch protection rules based on its verdicts.

## What's Changed

## What's Changed
* Audit hardening — HIGH/MEDIUM fixes (round 1) by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/17
* Audit hardening: 18 fixes across detection, scoring, security, and test coverage by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/18
* Add contextual interpretation to markdown report sections by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/19
* Validate PEM key format before jwt.encode() (§5.4) by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/20
* Add DEVLOG.md and AUDIT_LOG.md; update README to full system spec by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/21
* Add JSON report output for artifact-based ingestion by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/22
* Improve detection: security files, distributed structural, rename diffs, config deletions by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/23
* Raise structural CRITICAL score and add database file pattern by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/24
* Add WHITEPAPER.md and update DEVLOG with 2026-04-24 session by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/25
* Update DEVLOG and WHITEPAPER with dashboard timestamp/link fix by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/26
* Add 2026-04-24 findings register to AUDIT_LOG by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/27
* ci: silence Node.js 20 deprecation warning in analyser workflows by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/28
* ci: upgrade actions to Node.js 24-native versions by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/30
* WHITEPAPER: add §9 GitHub 2026 roadmap alignment by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/31
* v1.1.0 — AIntegrity fixes + SCA dependency scan + complexity advisory + CLAUDE.md by @DarkVader-PLG in https://github.com/PayloadGuard-PLG/payload-consequence-analyser/pull/32


**Full Changelog**: https://github.com/PayloadGuard-PLG/payload-consequence-analyser/compare/v1.0.2...v1.1.0
