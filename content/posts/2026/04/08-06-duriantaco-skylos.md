---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-04-08 06:23:14 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.3.0
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.3.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and GitHub Action designed to detect dead code, hardcoded secrets, exploitable flows, and AI-generated security regressions in Python, TypeScript, and Go. It automates code quality checks, security audits, and CI/CD pull request gating by providing actionable findings, GitHub annotations, and review comments. Skylos is particularly effective for teams using modern frameworks, AI-assisted coding tools, or building AI-driven applications that require robust security and code quality enforcement.

## What's Changed

## [4.3.0](https://github.com/duriantaco/skylos/compare/v4.2.1...v4.3.0) (2026-04-08)


### Features

* **cli:** add explicit project selection flow ([#171](https://github.com/duriantaco/skylos/issues/171)) ([3eb3001](https://github.com/duriantaco/skylos/commit/3eb30014c06cc5b4e96ed599298cc551010a7d3a))


### Bug Fixes

* **core:** honor root ignores and actionable clean edits ([#165](https://github.com/duriantaco/skylos/issues/165)) ([358dd1f](https://github.com/duriantaco/skylos/commit/358dd1f4a18f523fb0a4301ab7f15c43d8febfb0))
* **release:** align release-please bootstrap with 4.2.1 ([8fb330f](https://github.com/duriantaco/skylos/commit/8fb330fb0f8905defa7574b919be04db3188b3fe))
* **summary:** include Java in language analysis summary ([#175](https://github.com/duriantaco/skylos/issues/175)) ([433c0e8](https://github.com/duriantaco/skylos/commit/433c0e886fed3e1fab19bce3b9238141aa870b96))
* **ts:** align Next.js convention coverage ([#164](https://github.com/duriantaco/skylos/issues/164)) ([05264b2](https://github.com/duriantaco/skylos/commit/05264b2e32a440aad2549dd74ce66c7b7cc54176))

### Internal cleanup 

- narrow refactors across logic-rule helpers, verification output/finalization, AST compatibility, server rendering, API normalization, CLI parser wiring, and defend output handling
