---
title: OWASP Noir Action
date: 2026-04-02 21:55:53 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v0.29.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/owasp-noir/noir** to version **v0.29.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

OWASP Noir is a security-focused GitHub Action that bridges Static Application Security Testing (SAST) and Dynamic Application Security Testing (DAST) by analyzing source code to identify all application endpoints, including hidden or deprecated ones. It automates attack surface discovery, providing a comprehensive and actionable inventory of endpoints to eliminate security blind spots and enhance testing accuracy. With AI-powered analysis, multi-format output, and seamless integration into DevSecOps pipelines, Noir empowers White-box security teams and pentesters to conduct more effective and thorough security scans.

## What's Changed

## What's Changed
### Added

- getAttribute, getHeader, getCookies extraction to JSP analyzer (#1144) @tmchow

### Changed

- Propagate import depth for NOIR_PARSER_MAX_DEPTH in Java/Kotlin Spring analyzers (#1143) @hahwul
- Move parser.classes merge outside loop in process_package_classes (#1143) @hahwul

### Fixed

- Fixed PHP superglobals incorrectly used in JSP analyzer patterns (#1144) @tmchow
- Fixed inaccurate line numbers in Express.js analyzer (#1142) @4ICH4

## New Contributors
* @tmchow made their first contribution in https://github.com/owasp-noir/noir/pull/1144

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v0.29.0...v0.29.1
