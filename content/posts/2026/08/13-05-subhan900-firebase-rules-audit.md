---
title: Firebase Rules Audit
date: 2026-08-13 05:43:52 +00:00
tags:
  - subhan900
  - GitHub Actions
draft: false
repo: https://github.com/subhan900/firebase-rules-audit
marketplace: https://github.com/marketplace/actions/firebase-rules-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Firebase Rules Audit GitHub Action is a local command-line tool that reviews Firestore and Cloud Storage security rules for common risky access patterns, including unconditional `allow` statements, public `if true` conditions, rules without a `request.auth` reference, and recursive wildcard paths. It provides static checks to help identify potential security vulnerabilities in the rules files without connecting to Firebase or deploying them. The tool can be run from the command line or as a GitHub Action, and it outputs both console and machine-readable reports for further automation.
---


Version updated for **https://github.com/subhan900/firebase-rules-audit** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/firebase-rules-audit) to find the latest changes.

## Action Summary

The Firebase Rules Audit GitHub Action is a local command-line tool that reviews Firestore and Cloud Storage security rules for common risky access patterns, including unconditional `allow` statements, public `if true` conditions, rules without a `request.auth` reference, and recursive wildcard paths. It provides static checks to help identify potential security vulnerabilities in the rules files without connecting to Firebase or deploying them. The tool can be run from the command line or as a GitHub Action, and it outputs both console and machine-readable reports for further automation.

## What's Changed

## First stable release

Firebase Rules Audit is a local-only GitHub Action and CLI for flagging common risky Firestore and Cloud Storage security-rule patterns.

### Highlights

- Detects unconditional allow statements and public `if true` conditions
- Flags rules that do not reference `request.auth`
- Reports recursive wildcard paths
- Provides console, JSON, and Markdown output
- Supports CI enforcement with `fail-on-high`

### Use in GitHub Actions

```yaml
- uses: subhan900/firebase-rules-audit@v1.0.0
  with:
    files: firestore.rules storage.rules
    fail-on-high: 'true'
```

This is static analysis, not a replacement for a complete Firebase security review.
