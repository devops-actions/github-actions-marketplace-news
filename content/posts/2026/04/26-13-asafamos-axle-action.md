---
title: axle — a11y / WCAG Accessibility CI
date: 2026-04-26 13:39:32 +00:00
tags:
  - asafamos
  - GitHub Actions
draft: false
repo: https://github.com/asafamos/axle-action
marketplace: https://github.com/marketplace/actions/axle-a11y-wcag-accessibility-ci
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/asafamos/axle-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/axle-a11y-wcag-accessibility-ci) to find the latest changes.

## Action Summary

The Axle GitHub Action automates accessibility testing by scanning pull requests for WCAG 2.1/2.2 AA violations, generating detailed reports, and blocking merges if accessibility standards regress. It provides actionable insights, including AI-generated code-fix suggestions, to help teams comply with accessibility regulations such as EAA 2025, ADA, and Section 508. This tool streamlines the integration of accessibility compliance into CI/CD workflows without relying on intrusive runtime overlays.

## What's Changed

## Marketplace discoverability

This release renames the action from \"axle — Accessibility Compliance CI\" to **\"axle — a11y / WCAG Accessibility CI\"** so the Marketplace search for \`a11y\` finds it.

### Why
Searching the GitHub Marketplace for \`a11y\` returned 9-10 results — all 9 had \`a11y\` in the title; ours did not. GitHub Marketplace does strict string matching with no synonym expansion. The \"Accessibility\" word in our title was not enough.

### What changed
- \`action.yml\`: \`name\` and \`description\` updated to lead with \`a11y / WCAG 2.2 AA\`
- README H1 matches the new name; explicit keywords block at top
- Regulatory coverage in description expanded (added Section 508 alongside EAA 2025 / ADA)

### Backwards compatible
No behaviour change. \`uses: asafamos/axle-action@v1\` continues to work — the v1 major tag points at this commit.
