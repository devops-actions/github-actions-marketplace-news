---
title: Critical URL SEO Release Guard
date: 2026-08-08 14:33:29 +00:00
tags:
  - plainproof-labs
  - GitHub Actions
draft: false
repo: https://github.com/plainproof-labs/release-regression-guard
marketplace: https://github.com/marketplace/actions/critical-url-seo-release-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  Release Regression Guard is a GitHub Action that automates critical URL checks for SEO purposes after deployments. It compares repository-declared URLs against an expectation manifest, reporting pass/fail outcomes with detailed summaries and evidence. The action supports various checks such as HTTP status, same-origin redirects, indexing, canonical URLs, metadata presence, sitemap membership, and internal links. Users can install the Action from a published version or SHA, ensuring robustness and maintainability in their workflows.
---


Version updated for **https://github.com/plainproof-labs/release-regression-guard** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/critical-url-seo-release-guard) to find the latest changes.

## Action Summary

Release Regression Guard is a GitHub Action that automates critical URL checks for SEO purposes after deployments. It compares repository-declared URLs against an expectation manifest, reporting pass/fail outcomes with detailed summaries and evidence. The action supports various checks such as HTTP status, same-origin redirects, indexing, canonical URLs, metadata presence, sitemap membership, and internal links. Users can install the Action from a published version or SHA, ensuring robustness and maintainability in their workflows.

## What's Changed

# v1 release and Marketplace copy

## Release title

Release Regression Guard v1.0.0

## Marketplace category

Primary: Continuous integration

## Short description

Check repository-declared critical URLs after a deploy and keep JSON, SARIF,
and Markdown regression evidence.

## Release notes

Release Regression Guard v1 is one manifest-driven GitHub Action for technical
SEO and release owners. It checks declared critical URL status and same-origin
redirects, robots/noindex, canonical, required metadata, sitemap membership,
and required internal links.

Authentication, blocking, temporary transport or server failures, and
ambiguous JavaScript shells remain visible as `unknown`. The Action does not
guess an SEO score and does not require a third-party secret or service.

Start with the README installation workflow, copy the minimal manifest, set the
deployed origin, and download the JSON, SARIF, and Markdown workflow artifact.
Deterministic pass and fail fixtures are included for local verification.
