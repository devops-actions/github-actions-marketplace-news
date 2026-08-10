---
title: provensql SQL equivalence check
date: 2026-08-10 06:06:31 +00:00
tags:
  - nac7
  - GitHub Actions
draft: false
repo: https://github.com/nac7/provensql-action
marketplace: https://github.com/marketplace/actions/provensql-sql-equivalence-check
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks SQL equivalence for pull requests by comparing modified `.sql` files (base vs. head versions) using the `provensql` tool. It reports four verdicts per file: EQUIVALENT, UNKNOWN, DIFFERENT, or SCHEMA_CHANGE based on the proven behavior changes or undecidability of the diffs. The action is sound by construction and can fail the job only when a proven behavior change occurs, with an option to report `UNKNOWN` for human review.
---


Version updated for **https://github.com/nac7/provensql-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/provensql-sql-equivalence-check) to find the latest changes.

## Action Summary

This GitHub Action checks SQL equivalence for pull requests by comparing modified `.sql` files (base vs. head versions) using the `provensql` tool. It reports four verdicts per file: EQUIVALENT, UNKNOWN, DIFFERENT, or SCHEMA_CHANGE based on the proven behavior changes or undecidability of the diffs. The action is sound by construction and can fail the job only when a proven behavior change occurs, with an option to report `UNKNOWN` for human review.

## What's Changed

provensql checks the SQL changed in a pull request and fails the build
when a change is not proven equivalence-preserving. Sound by construction:
it never reports a false EQUIVALENT.

Usage:
  - uses: actions/checkout@v4
    with: { fetch-depth: 0 }
  - uses: nac7/provensql-action@v1
    with:
      paths: "**/*.sql"
      fail-on: different

Verdicts: EQUIVALENT / DIFFERENT (with a counterexample row) /
SCHEMA_CHANGE / UNKNOWN. Apache-2.0
