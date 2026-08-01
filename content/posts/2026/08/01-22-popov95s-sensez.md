---
title: Sensez - Code Quality Feedback
date: 2026-08-01 22:26:54 +00:00
tags:
  - popov95s
  - GitHub Actions
draft: false
repo: https://github.com/popov95s/sensez
marketplace: https://github.com/marketplace/actions/sensez-code-quality-feedback
version: v0.2.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  sensez is a coding agent companion that provides real-time feedback on code quality metrics such as structural maintainability, duplication, dead code, cycles, architecture violations, and design smells. It helps developers catch and fix issues before they become more significant, improving the overall quality of their codebase.
---


Version updated for **https://github.com/popov95s/sensez** to version **v0.2.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sensez-code-quality-feedback) to find the latest changes.

## Action Summary

sensez is a coding agent companion that provides real-time feedback on code quality metrics such as structural maintainability, duplication, dead code, cycles, architecture violations, and design smells. It helps developers catch and fix issues before they become more significant, improving the overall quality of their codebase.

## What's Changed

## Added
- New nested_ternary smell for Python, JavaScript, and TypeScript.
## Improved
- Cache TypeScript path-alias resolution per project root.
- Eliminate the second AST walk when collecting JavaScript/TypeScript function metrics.
- Improve JavaScript/TypeScript traversal coverage and regression tests.
## Fixed
- Correct schema-call and validator detection for JavaScript record analysis.
- Preserve detection of .parse(), .safeParse(), and .decode() validation calls.
