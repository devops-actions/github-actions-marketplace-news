---
title: Flowlyt Security Analyzer
date: 2026-03-19 21:48:39 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.0.10
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.0.10**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed to enhance the security of CI/CD pipelines in GitHub Actions and GitLab workflows. It combines abstract syntax tree (AST) analysis with AI-driven false positive detection to identify vulnerabilities, misconfigurations, and supply chain risks with greater accuracy and speed. Its key capabilities include context-aware severity adjustments, support for multiple AI providers, dynamic workflow risk assessments, and real-time verification to reduce noise and improve actionable insights.

## Release notes

# v1.0.10 — 2026-03-19

## What's Changed

### Bug Fixes

- **REF_CONFUSION**: Stable semver version tags (`@v1`, `@v2`, `@v1.2.3`) no longer produce false positive findings. Only genuinely mutable refs (`@main`, `@master`, `@develop`, bare branch-style names) fire. Severity is now differentiated: `main`/`master` = HIGH, others = MEDIUM. The `git checkout`/`git pull` sub-rule is unchanged.

- **EXTERNAL_TRIGGER_DEBUG**: `workflow_dispatch` findings are now gated on effective write permissions. Workflows with `permissions: read-all`, `permissions: none`, or all-read scope maps are suppressed — a read-only manually triggered workflow poses no meaningful attack surface. Workflows with no `permissions:` block (GitHub default = write-all) or any write scope still fire. `issue_comment`, `pull_request_target`, `workflow_run`, and `repository_dispatch` behaviour is unchanged.

- **SHELL_SCRIPT_ISSUES (unquoted variable)**: The broad unquoted-variable check has been replaced with a precise per-line scan. Variables used in safe command positions (`echo`, `printf`, `cat`) are no longer flagged. Only variables in genuinely dangerous positions (`rm`, `cp`, `mv`, `curl`, `wget`, `eval`, `bash -c`, `sudo`-prefixed variants, etc.) produce findings.

- **Data flow analysis**: Fixed two false positive patterns in the taint engine — self-referential env var flows (a variable assigned from a secret and used in its own env block) and cross-variable same-step flows (unrelated env vars sharing a step being incorrectly linked).

### Improvements

- `permsImplyWrite` correctly handles all GitHub Actions permissions forms: `nil` (write-all default), string shorthands (`read-all`, `write-all`, `none`), boolean values (`false`/`true`), empty map (`{}`), and granular scope maps.
- `dangerousCmdRe` extended to match `sudo`-prefixed dangerous commands (`sudo rm`, `sudo chmod`, etc.).
- Added regression test fixtures for scs-feed workflows ensuring false positive suppression is stable across updates.

## Breaking Changes

None.

## Upgrade Notes

No special steps required. Existing `.flowlyt.yml` configuration files are fully compatible.
