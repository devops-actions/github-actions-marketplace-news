---
title: SecScore
date: 2026-03-10 22:04:59 +00:00
tags:
  - cassiodeveloper
  - GitHub Actions
draft: false
repo: https://github.com/cassiodeveloper/SecScore
marketplace: https://github.com/marketplace/actions/secscore
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cassiodeveloper/SecScore** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secscore) to find the latest changes.

## Action Summary

SecScore is a lightweight security scoring engine designed for CI/CD pipelines, evaluating findings from SARIF-compatible security scanners to generate a single security score for pull requests. It automates decision-making by determining whether a change should pass, require review, or fail based on customizable policies and severity thresholds. This GitHub Action streamlines security assessments, making it compatible with tools like Snyk, CodeQL, and Semgrep, while enabling policy-driven, automated security workflows.

## Release notes

SecScore v0.2.0 introduces diff-aware security scoring and improved PR feedback.

Highlights

• Diff-aware filtering to focus only on findings introduced in a Pull Request  
• Security Diff section showing vulnerability changes by severity  
• Improved PR comment UX with clearer decision explanation  
• CLI output rendering using Rich for better terminal readability  
• SARIF fixtures and CI validation workflow

SecScore reduces security scanner noise and enables objective PASS / REVIEW / FAIL decisions in CI/CD pipelines.
