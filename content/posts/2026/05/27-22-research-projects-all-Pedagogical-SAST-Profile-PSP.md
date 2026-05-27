---
title: Pedagogical SAST Profile (PSP)
date: 2026-05-27 22:48:30 +00:00
tags:
  - research-projects-all
  - GitHub Actions
draft: false
repo: https://github.com/research-projects-all/Pedagogical-SAST-Profile-PSP
marketplace: https://github.com/marketplace/actions/pedagogical-sast-profile-psp
version: v2.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/research-projects-all/Pedagogical-SAST-Profile-PSP** to version **v2.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pedagogical-sast-profile-psp) to find the latest changes.

## Action Summary

The Pedagogical SAST Profile (PSP) GitHub Action is a Static Application Security Testing tool tailored for educational environments, offering a curated rule set focused on beginner-to-intermediate developers learning secure coding with Django or Spring frameworks. It addresses common challenges in teaching security by reducing noise, providing actionable feedback specific to the framework, and concentrating on essential OWASP Top 10 vulnerabilities. Key capabilities include automatic language detection, exclusion of irrelevant code, and focused rule coverage to streamline security education.

## What's Changed

## v2.0.0 — Language Detection
**Release Date**: 2026-05-27

### New Features
- **Auto-Detection (`framework: auto`)**: The action now inspects the repository for `.java` and `.py` files and automatically selects Spring, Django, or both rule sets. This makes the action truly zero-config for mixed classrooms.
- **Dynamic File Targeting**: When running in `spring` or `django` mode, Semgrep only includes the relevant file extensions (`*.java` / `*.py`), reducing scan time and noise.
- **Transparent Logging**: The detection step prints GitHub Actions notices (`::notice::`) so instructors and students can see exactly why a specific framework was chosen.

### Improvements
- Backward compatibility maintained for all explicit `framework` values (`django`, `spring`, `both`).
- `framework` input changed from `required: true` to `required: false` with `default: 'auto'`.

## v1.0.0 — Pedagogical SAST Profile Launch
**Release Date**: 2026-05-20

### Features
- 50 curated Semgrep rules (30 Django, 20 Spring) mapped to OWASP Top 10 2021.
- SARIF, JSON, and plain-text output formats.
- Native GitHub Code Scanning integration via `upload-sarif`.
- Scope-limited scanning that excludes dependencies, virtual environments, build artifacts, and test code.
- Framework-concrete remediation messages referencing exact APIs (`@login_required`, `BCryptPasswordEncoder`, `url_has_allowed_host_and_scheme()`, etc.).
