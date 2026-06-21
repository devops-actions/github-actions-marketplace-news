---
title: SkillTotal AI Component Security Scan
date: 2026-06-21 06:49:02 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.18.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.18.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Added
- **Package-name typosquatting detection (`ST-TYPOSQUAT`).** Flags an npm/PyPI package whose name
  is one or two character edits from a well-known popular package — the classic supply-chain
  name-confusion attack (`lodash` → `loddash`). Deterministic, stdlib-only, no LLM; a synthesized
  finding keyed off component identity with evidence anchored to the manifest `name` declaration
  (`skilltotal/typosquatting.py`). Conservative (exact matches, scoped names, and short names are
  never flagged) so it holds false positives at zero on benign corpora. Maps to OWASP **AST02**
  (Supply Chain Compromise). Ruleset **19**.
- **GitHub Action: optional pull-request comment.** A new `comment-on-pr` input posts (and updates
  in place) a single sticky summary comment — risk level, score, findings, capabilities — on pull
  requests. Off by default; needs `pull-requests: write`. SARIF upload to Code Scanning is unchanged.
- **README: "Add a status badge"** section pointing to the per-report badge snippet.


