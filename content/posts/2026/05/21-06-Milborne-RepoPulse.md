---
title: RepoPulse Open Source Health Audit
date: 2026-05-21 06:42:48 +00:00
tags:
  - Milborne
  - GitHub Actions
draft: false
repo: https://github.com/Milborne/RepoPulse
marketplace: https://github.com/marketplace/actions/repopulse-open-source-health-audit
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Milborne/RepoPulse** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repopulse-open-source-health-audit) to find the latest changes.

## Action Summary

RepoPulse is a GitHub Action designed to evaluate the open-source health of a repository by performing deterministic, local checks without relying on external APIs or paid services. It audits key community and project files (e.g., README, LICENSE, CONTRIBUTING) and calculates a health score (0-100), generating a detailed report and optionally failing workflows if a minimum score is not met. RepoPulse automates repository compliance and quality checks, making it suitable for maintaining consistent standards across pull requests and repository updates.

## What's Changed

## Highlights

- Refactors RepoPulse into a richer offline audit engine with path type validation and content-aware community file checks.
- Adds strict mode, fail-on-missing, output format selection, check exclusions, README language support, custom weights, and job summary control.
- Adds structured JSON output for downstream workflow steps and Markdown GitHub Step Summary reporting.
- Improves README section detection for English and Spanish while ignoring fenced code blocks.
- Adds CI, Dependabot, ESLint, Prettier, expanded tests, and repository line-ending normalization.
- Updates documentation for scoring semantics, release strategy, Marketplace constraints, security reporting, and local development.

## Validation

- npm run check
- npm audit --audit-level=moderate
- git diff --exit-code dist/index.js
- GitHub Actions CI on main passed

## Notes

The repository keeps CI workflows for maintainability. GitHub Marketplace publication may require a release branch or mirror without .github/workflows while preserving action.yml, dist/index.js, docs, and required metadata.
