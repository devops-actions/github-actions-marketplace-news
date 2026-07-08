---
title: SkillTotal AI Component Security Scan
date: 2026-07-08 22:21:27 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.34.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.34.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **Ruleset 39 — two embedded-secret false positives (closes the tripwire secret sub-cluster)**
  (see `RULES_CHANGELOG.md`): (1) a secret next to a client-telemetry ingestion URL
  (`*.client-telemetry.<vendor>/enqueue`) is a publishable key (Sentry-DSN class) →
  `needs_review`, not scored — snowflake-connector-python's `telemetry_oob.py`; (2) a
  `testing_utils.py` / `test_utils.py` module is recognised as test-support code so a hardcoded CI
  token there is demoted — transformers' `src/transformers/testing_utils.py` `hf_` token. Recall
  preserved (secret without a telemetry URL, and non-test `*_utils.py`, still score).


