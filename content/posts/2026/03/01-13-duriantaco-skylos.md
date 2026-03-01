---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-03-01 13:24:07 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.2
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.2**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a privacy-first static application security testing (SAST) tool designed for Python, TypeScript, and Go. It automates the detection of dead code, security vulnerabilities (e.g., SQL injection, SSRF, secrets), and code quality issues, leveraging a hybrid analysis engine (AST and optional AI) for high precision and minimal false positives. Built for seamless CI/CD integration, Skylos improves code reliability and security by providing automated insights directly within pull requests and build pipelines.

## Release notes

## [3.5.2] - 2026-03-01

### Added
- Go dead code detection now live
- Go module caching to avoid redundant binary invocations per file

### Changed
- Go engine output now returns symbols alongside findings
- Go engine contract validates symbol data structure
- README: added Skylos vs Knip (TS) benchmark on consola
