---
title: OWASP Noir Action
date: 2026-03-28 22:13:22 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v0.29.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/owasp-noir/noir** to version **v0.29.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

OWASP Noir is a GitHub Action that analyzes source code to identify and inventory application endpoints, including hidden routes, shadow APIs, and deprecated endpoints, bridging the gap between static application security testing (SAST) and dynamic application security testing (DAST). It automates attack surface discovery, enhances security testing accuracy, and integrates seamlessly into DevSecOps pipelines, providing multi-format outputs compatible with tools like ZAP, Burp Suite, and OpenAPI Specification. By leveraging AI and large language models (LLMs), Noir supports various languages and frameworks, addressing security blind spots and improving the efficiency of security teams and penetration testers.

## Release notes

## What's Changed

### Added
- Salvo (Rust) framework support
- Hono (Node.js) framework support
- Nitro.js framework support
- httprouter (Go) framework support
- GoFrame (Go) framework support
- gRPC specification analyzer and detector
- Cross-file route analysis for Go analyzers
- Kemal namespace and mount routing support
- `NOIR_PARSER_MAX_DEPTH` environment variable to cap import-following depth
- Framework auth taggers
- Framework taggers

### Changed
- Improved scan performance with buffered channels, optimized file handling, and parallel taggers
- Refactored Go framework analyzers for clarity, consistency, and reduced duplication
- Improved detector coverage and reduced false positives
- Tightened Symfony detector heuristics
- Refined JSP XML detection
- Used `sarif.cr` library for SARIF output
- Upgraded snapcraft base to core24

### Fixed
- Fixed `--only-techs` to accept canonical tech keys
- Fixed floating point exception when `ai_max_token` is 0
- Fixed JS parser false-positive routes from HTTP client calls and nested expressions
- Fixed Kotlin Spring flaky test caused by non-deterministic `Dir.glob` ordering
- Fixed cross-file group resolution bugs in Go analyzers
- Fixed Chi mounted router parameter extraction

## New Contributors
* @devjaikalyani made their first contribution in https://github.com/owasp-noir/noir/pull/1093
* @davidequarracino made their first contribution in https://github.com/owasp-noir/noir/pull/1098
* @oussama134 made their first contribution in https://github.com/owasp-noir/noir/pull/1130

---

Thank you to all the contributors: @fabiencheret, @4ICH4, @devjaikalyani, @chei-l, @davidequarracino, and @oussama134. Your contributions have really helped make the project better — really appreciate the time and effort you put in!

---

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v0.28.0...v0.29.0
