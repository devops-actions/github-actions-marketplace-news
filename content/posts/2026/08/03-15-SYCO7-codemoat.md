---
title: CodeMoat AI Code Security Scanner
date: 2026-08-03 15:01:31 +00:00
tags:
  - SYCO7
  - GitHub Actions
draft: false
repo: https://github.com/SYCO7/codemoat
marketplace: https://github.com/marketplace/actions/codemoat-ai-code-security-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  CodeMoat is a GitHub Action designed to scan AI-generated code for security vulnerabilities, including hardcoded secrets and injection flaws. It uses Semgrep and Gitleaks to detect these vulnerabilities and provides actionable fixes through pull request comments. The action wraps two established open-source engines and adds an AI ruleset targeting specific patterns common in AI-generated code.
---


Version updated for **https://github.com/SYCO7/codemoat** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codemoat-ai-code-security-scanner) to find the latest changes.

## Action Summary

CodeMoat is a GitHub Action designed to scan AI-generated code for security vulnerabilities, including hardcoded secrets and injection flaws. It uses Semgrep and Gitleaks to detect these vulnerabilities and provides actionable fixes through pull request comments. The action wraps two established open-source engines and adds an AI ruleset targeting specific patterns common in AI-generated code.

## What's Changed

 Security scanner for AI-generated code. Runs on every pull request, scans only
  the changed files, and posts one updating comment with each finding's severity,
  CWE, a suggested fix, and a confidence score from its triage model — so real
  issues rise and test-fixture noise sinks.

  Wraps Semgrep + Gitleaks and adds 12 rules targeting the mistakes AI coding
  agents actually make: wildcard CORS with credentials, auth middleware commented
  out "temporarily", forgotten debug routes, weak seeded credentials, and more.

  No account required. Runs fully self-contained in your CI.
