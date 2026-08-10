---
title: wcagc accessibility check
date: 2026-08-10 21:17:35 +00:00
tags:
  - WCAG-Compliance
  - GitHub Actions
draft: false
repo: https://github.com/WCAG-Compliance/wcagc-ci
marketplace: https://github.com/marketplace/actions/wcagc-accessibility-check
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates WCAG (Web Content Accessibility Guidelines) accessibility checks using the wcagc tool from GitHub Actions or GitLab CI. It compares URL-level findings with a saved baseline and generates a review workflow comment if necessary. The action provides automated checks for only part of WCAG, ensures manual review remains essential, and outputs URL-level annotations and results for continuous integration and code scanning purposes.
---


Version updated for **https://github.com/WCAG-Compliance/wcagc-ci** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wcagc-accessibility-check) to find the latest changes.

## Action Summary

This GitHub Action automates WCAG (Web Content Accessibility Guidelines) accessibility checks using the wcagc tool from GitHub Actions or GitLab CI. It compares URL-level findings with a saved baseline and generates a review workflow comment if necessary. The action provides automated checks for only part of WCAG, ensures manual review remains essential, and outputs URL-level annotations and results for continuous integration and code scanning purposes.

## What's Changed

## What’s new

- Optional SARIF 2.1.0 output with stable fingerprints for GitHub Code scanning uploads.
- Opt-in, idempotent pull request comments for accessibility check results.
- Dedicated `ci:check` API scope and documented FREE/STARTER CI quotas.
- Hardened GitLab CI handling and secret-safe diagnostic output.

The action reports automated accessibility findings and does not guarantee legal compliance. Review results manually as part of your accessibility process.
