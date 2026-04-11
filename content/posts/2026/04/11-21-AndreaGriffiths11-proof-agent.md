---
title: proof-agent-verify
date: 2026-04-11 21:46:48 +00:00
tags:
  - AndreaGriffiths11
  - GitHub Actions
draft: false
repo: https://github.com/AndreaGriffiths11/proof-agent
marketplace: https://github.com/marketplace/actions/proof-agent-verify
version: v1.0.3
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/AndreaGriffiths11/proof-agent** to version **v1.0.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/proof-agent-verify) to find the latest changes.

## Action Summary

Proof Agent is a GitHub Action designed to perform adversarial verification on AI-generated code changes, ensuring the accuracy, security, and quality of pull requests. By separating the roles of a worker agent (which generates changes) and a verifier agent (which independently reviews them), it automates static code analysis to identify vulnerabilities, logical errors, and code quality issues while providing evidence-based verdicts. This action helps prevent self-verification errors, improving reliability and reducing risks in production environments.

## What's Changed

## Security Fixes 🔒

- **Fix Python injection in verify.sh** (CRITICAL)
  - Malicious filenames could inject Python code
  - Example attack: `'; import os; os.system('rm -rf /')#`
  - Fix: Use stdin instead of argv for file list parsing

## Bug Fixes 🐛

- **Fix prompt-echo false FAIL**
  - Verifier echoing prompt examples triggered false FAIL verdicts
  - Fix: Use LAST occurrence of verdict (not first)
  - Added regression test: `test_prompt_echo_false_fail`

## Documentation 📝

- **Fix README overpromising**
  - README showed verifier running pytest, pip commands (not true)
  - Reality: Static review only (reads diff, no command execution)
  - Updated "What It Checks" section + example workflow

## Improvements ♻️

- **Refactor verdict parsing to Python CLI**
  - New CLI entry point: `proof-agent-parse-verdict`
  - Replaces 6-line bash heredoc with clean Python CLI
  - Fully tested (6 new unit tests, 25/25 total passing)
  - Better error handling (safe PARTIAL fallback)
  - Reusable from any script

## Testing ✅

- All tests passing: 25/25 (19 original + 6 new CLI tests)
- No regressions
- Backward compatible

## Deployment 🚀

- Deployed to 5 production repos (harness, teamxray, rusty-agent, mainbranch, claw-relay)
- Zero-downtime update (workflows use `@v1.0.2` or `@main`)

## Credit

External code review feedback (Saturday morning) — thanks for the thorough review!

---

**Full Changelog:** https://github.com/AndreaGriffiths11/proof-agent/compare/v1.0.2...v1.0.3

