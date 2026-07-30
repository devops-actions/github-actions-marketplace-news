---
title: RepoSage Audit
date: 2026-07-30 17:29:23 +00:00
tags:
  - ricardogr07
  - GitHub Actions
draft: false
repo: https://github.com/ricardogr07/reposage
marketplace: https://github.com/marketplace/actions/reposage-audit
version: v0.4.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  RepoSage is an AI-assisted tool that performs a technical audit of codebases. It extracts deterministic signals from static files, generates structured reports in Markdown or JSON format, and optionally adds AI-generated insights such as module roles, debt items, and top-5 improvements. The MVP supports various languages and frameworks and can output reports in different formats, including AI-enriched versions.
---


Version updated for **https://github.com/ricardogr07/reposage** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reposage-audit) to find the latest changes.

## Action Summary

RepoSage is an AI-assisted tool that performs a technical audit of codebases. It extracts deterministic signals from static files, generates structured reports in Markdown or JSON format, and optionally adds AI-generated insights such as module roles, debt items, and top-5 improvements. The MVP supports various languages and frameworks and can output reports in different formats, including AI-enriched versions.

## What's Changed

- fix: parse pytest 9 collect summaries; honor PEP 224 constant docstrings (13f5ff9)
- docs: cut 0.4.0 changelog section; update README status, Action ref, and tox docs (02b4921)
- Merge pull request #12 from ricardogr07/feature/six-standards-audit (48f0e9b)
- feat: ds-audit composite action, role-glob CLI flags, CI self-grading (9a8415d)
- feat: DS/ML profile in the standards report; enrichment defaults to Opus (2e7fb35)
- feat: honest s3.suite when pytest is missing; server image can execute suites (c9cba5a)
- chore: bump version to 0.4.0 for the Six Standards audit release (256751d)
- feat: audit_standards MCP tool grades remote repos against the Six Standards (e0a3931)
- feat: scoped secret scan via secrets_exclude_globs; self-audit reaches 6/6 (d4f214e)
- feat: server observability, alert rules, locked Docker image, pinned self-audit (8ef1e8f)
