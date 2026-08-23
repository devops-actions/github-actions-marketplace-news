---
title: Diffly PR triage
date: 2026-08-23 05:44:13 +00:00
tags:
  - VIVAAN-DHAWAN
  - GitHub Actions
draft: false
repo: https://github.com/VIVAAN-DHAWAN/diffly-cli
marketplace: https://github.com/marketplace/actions/diffly-pr-triage
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  The `diffly` GitHub Action automates the review of large AI-generated pull requests by providing a comprehensive one-page Markdown report. It parses file changes with Tree-sitter to identify symbols modified, tests affected, and dependencies updated. The action also maps blast radiuses, identifies risk flags such as security vulnerabilities and missing test coverage, and provides a PASS, QUARANTINE, or BLOCK verdict based on predefined rules.
---


Version updated for **https://github.com/VIVAAN-DHAWAN/diffly-cli** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diffly-pr-triage) to find the latest changes.

## Action Summary

**Summary:**

The `diffly` GitHub Action automates the review of large AI-generated pull requests by providing a comprehensive one-page Markdown report. It parses file changes with Tree-sitter to identify symbols modified, tests affected, and dependencies updated. The action also maps blast radiuses, identifies risk flags such as security vulnerabilities and missing test coverage, and provides a PASS, QUARANTINE, or BLOCK verdict based on predefined rules.

## What's Changed

# Diffly CLI v1.0.0

Diffly CLI 1.0.0 is the first production-ready release of deterministic pull-request triage. It turns pull-request evidence—changed files, symbols, direct callers, tests, checks, and risk signals—into a clear review decision without making the verdict depend on an LLM.

## Highlights

- **Verdicts that match the evidence.** `PASS` is now the normal result for healthy pull requests. `QUARANTINE` is reserved for concrete review gates such as security-sensitive code, database schema or migration changes, dependency changes, or pending checks. `BLOCK` is reserved for failed required checks and high-confidence credential exposure.
- **Reliable explanations.** When you opt in, Diffly always includes an explanation in the review: a bounded, redacted AI narrative when a provider is configured, or a clearly labelled local explanation when it is not. Explanations never alter the deterministic verdict.
- **A focused terminal workflow.** The guided wizard, loading transition, keyboard-driven review, and report output have been redesigned for a centred, readable terminal experience with clearer prompts and recovery messages.
- **Works where you work.** Review GitHub pull requests, analyze local changes offline, consume stable JSON in CI, or use the bundled GitHub Action. Diffly also reuses your authenticated GitHub CLI session when available.

## Upgrade

```bash
pip install --upgrade diffly-cli
```

Or run `diffly update` from an existing 0.4.0+ installation.

## Confidence

Version 1.0.0 is backed by the project test suite and cross-version CI coverage for Python 3.10–3.13. Diffly is production-ready as a deterministic review signal: it helps teams focus their review effort, but it does not replace human review or guarantee that a pull request is defect-free.

Thank you to everyone who tested Diffly before 1.0.0. This release establishes a dependable foundation for reviewing pull requests with more context and less noise.

