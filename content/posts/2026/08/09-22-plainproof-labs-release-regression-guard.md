---
title: Critical URL SEO Release Guard
date: 2026-08-09 22:00:20 +00:00
tags:
  - plainproof-labs
  - GitHub Actions
draft: false
repo: https://github.com/plainproof-labs/release-regression-guard
marketplace: https://github.com/marketplace/actions/critical-url-seo-release-guard
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Release Regression Guard action automates the verification of critical URLs after a deployment by comparing a repository-owned manifest with the deployed origin. It checks for broken redirects, `noindex`, canonical/metadata regressions, sitemap gaps, and missing internal links. The main functionality is to report these issues in the workflow Job Summary as pass, fail, unknown, or documented temporary exceptions.
---


Version updated for **https://github.com/plainproof-labs/release-regression-guard** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/critical-url-seo-release-guard) to find the latest changes.

## Action Summary

The Release Regression Guard action automates the verification of critical URLs after a deployment by comparing a repository-owned manifest with the deployed origin. It checks for broken redirects, `noindex`, canonical/metadata regressions, sitemap gaps, and missing internal links. The main functionality is to report these issues in the workflow Job Summary as pass, fail, unknown, or documented temporary exceptions.

## What's Changed

Release Regression Guard v1.1.0 adds a bounded GitHub Job Summary and strengthens deterministic release verification across positive, negative, exception, and unknown states.

Highlights:
- Validate Action exit codes, annotations, outputs, JSON, SARIF, Markdown, summaries, and privacy canaries through the spawned entrypoint.
- Correct robots wildcard precedence, noindex handling, document and base URL resolution, sitemap membership, and invalid redirect handling.
- Prevent comments and script, style, or template text from creating false document facts; ambiguous JavaScript remains unknown.
- Align report provenance with package version 1.1.0 and tighten manifest path validation.
- Keep the Node.js 24 runtime, existing inputs and outputs, target-only network boundary, and default-disabled affiliate mode.

See CHANGELOG.md for the full compatibility note.
