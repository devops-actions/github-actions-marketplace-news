---
title: compose-lint
date: 2026-04-23 21:42:36 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter designed to analyze Docker Compose files for potential misconfigurations that could pose security risks. It automates the detection of issues, such as insecure settings or non-compliance with OWASP and CIS standards, helping developers identify and address vulnerabilities before deployment. Key capabilities include zero-configuration usage, compatibility with multiple file formats, and detailed rule-based reporting for enhanced container security.

## What's Changed


### Added

- `--explain CL-XXXX` prints the per-rule prose documentation
  (`docs/rules/CL-XXXX.md`) to stdout so reviewers can read the full
  rationale, references, and fix guidance without context-switching to
  the browser. Accepts any case, exits 2 on unknown or malformed rule
  ids, and refuses to run alongside FILE arguments. The rule-doc
  markdown ships inside the wheel under `compose_lint/rule_docs/`.


