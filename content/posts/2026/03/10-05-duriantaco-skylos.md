---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-03-10 05:58:04 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.9
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.9**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a privacy-focused static application security testing (SAST) tool designed for Python, TypeScript, and Go. It automates the detection of dead code, security vulnerabilities (e.g., SQL injection, SSRF, secrets), and code quality issues with high precision, leveraging a hybrid engine combining static analysis and AI-powered insights. Skylos streamlines CI/CD workflows by providing automated pull request reviews, runtime validation, and quality gates to ensure secure and efficient code.

## Release notes

## [3.5.9] - 2026-03-10

Patch over 3.5.8.

### Fixed
- `skylos cicd init` no longer crashes with `TypeError: generate_workflow() got an unexpected keyword argument 'use_baseline'`

## [3.5.8] - 2026-03-10

### Fixed
- SKY-D260: multiline HTML comments no longer produce duplicate findings — all spanned lines are excluded from prose scanning
- SKY-D260: `scan_directory` now reuses project-wide `DEFAULT_EXCLUDE_FOLDERS` (adds `vendor`, `.next`, `.nuxt`, `.idea`, etc.)
- SKY-D260: removed overly broad patterns (`system|assistant:` header, `when the AI reads this`), tightened prompt-key regex
- SKY-D260: fenced code blocks and YAML front matter excluded from markdown prose scanning
- SKY-D260: homoglyph detection only flags mixed-script words, not pure Cyrillic/Greek text
- SKY-D260: removed `return`/`print` from exfil verbs, tightened `act as` to require sentence boundary
- SKY-D260: fixed single-line string regex matching across newlines in `.py` files
- SKY-Q301: now counts comprehension `for`/`if` and match case guards
- SKY-Q301: threshold changed from `>=10` to `>10` (aligns with McCabe convention and TS engine)
