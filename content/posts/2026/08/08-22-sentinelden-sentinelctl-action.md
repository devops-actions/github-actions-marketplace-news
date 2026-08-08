---
title: SentinelDen Studio Audit
date: 2026-08-08 22:02:58 +00:00
tags:
  - sentinelden
  - GitHub Actions
draft: false
repo: https://github.com/sentinelden/sentinelctl-action
marketplace: https://github.com/marketplace/actions/sentinelden-studio-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action integrates SentinelDen Studio's security audit tools into your iOS or Android build pipeline to detect and report vulnerabilities. It automates the process of running audits on pull requests, providing detailed findings in GitHub's Security tab. The action supports both Mach-O and APK/DEX parsing, as well as secret and crypto-misuse detection, with configurable severity thresholds and a license key for premium features.
---


Version updated for **https://github.com/sentinelden/sentinelctl-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinelden-studio-audit) to find the latest changes.

## Action Summary

This GitHub Action integrates SentinelDen Studio's security audit tools into your iOS or Android build pipeline to detect and report vulnerabilities. It automates the process of running audits on pull requests, providing detailed findings in GitHub's Security tab. The action supports both Mach-O and APK/DEX parsing, as well as secret and crypto-misuse detection, with configurable severity thresholds and a license key for premium features.

## What's Changed

Audits your iOS or Android build in CI and surfaces findings in GitHub code scanning via SARIF.

Runs the same static engine as the SentinelDen Studio desktop app: Mach-O and
APK/DEX parsing, OWASP MASVS control coverage, CycloneDX SBOM, secret and
crypto-misuse detection, and a policy gate that can fail the build.

No account, no key, no charge. The audit runs entirely on your runner; your
binary is never uploaded anywhere.

Not included: PDF reports, dynamic analysis, arm64 runners.
