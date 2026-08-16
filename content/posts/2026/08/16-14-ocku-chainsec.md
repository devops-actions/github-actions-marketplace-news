---
title: chainsec — dependency chain supply audit
date: 2026-08-16 14:14:00 +00:00
tags:
  - ocku
  - GitHub Actions
draft: false
repo: https://github.com/ocku/chainsec
marketplace: https://github.com/marketplace/actions/chainsec-dependency-chain-supply-audit
version: 0.6.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  `chainsec` is a dependency chain supply auditing tool that scans Python, JavaScript, and TypeScript projects for malicious code, bad practices, and security vulnerabilities. It uses Tree-sitter to parse source files statically and runs versioned queries against them to detect suspicious constructs like dynamic execution and network access. The tool is safe by default and does not install or execute package code, making it suitable for use as a CI component with documented exit codes.
---


Version updated for **https://github.com/ocku/chainsec** to version **0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chainsec-dependency-chain-supply-audit) to find the latest changes.

## Action Summary

`chainsec` is a dependency chain supply auditing tool that scans Python, JavaScript, and TypeScript projects for malicious code, bad practices, and security vulnerabilities. It uses Tree-sitter to parse source files statically and runs versioned queries against them to detect suspicious constructs like dynamic execution and network access. The tool is safe by default and does not install or execute package code, making it suitable for use as a CI component with documented exit codes.

## What's Changed

- Make GitHub Action scan the current project (#12) (42199c4)
- Reorganize app core and document control flow (#11) (aff391c)
- Release/0.5.2 (#10) (5f13230)
- chore: release 0.5.1 — improve human output for scans and diffs (#8) (5131eda)
- Simplify architecture diagram in README, bump limits (#7) (01cb5e3)
- Harden io-related subsystems, improve rules, rework cli, add diffing (#6) (fedc986)
- Release 0.4.0 (#5) (8631275)
- chore: update demo (#4) (527dd61)
- Release 0.3.0 (#3) (3f6f46c)
- Release 0.2.1 (#2) (2ef7230)
