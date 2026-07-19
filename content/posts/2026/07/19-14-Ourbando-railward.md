---
title: railward
date: 2026-07-19 14:40:37 +00:00
tags:
  - Ourbando
  - GitHub Actions
draft: false
repo: https://github.com/Ourbando/railward
marketplace: https://github.com/marketplace/actions/railward
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Railward is a deterministic guardrail that automatically tests and validates AI policies. It runs predefined attack scenarios against the policy to ensure it behaves as expected. The action provides signed, hash-chained logs of allowed, blocked, and leaked actions, allowing users to verify the policy's compliance and detect potential vulnerabilities.
---


Version updated for **https://github.com/Ourbando/railward** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/railward) to find the latest changes.

## Action Summary

Railward is a deterministic guardrail that automatically tests and validates AI policies. It runs predefined attack scenarios against the policy to ensure it behaves as expected. The action provides signed, hash-chained logs of allowed, blocked, and leaked actions, allowing users to verify the policy's compliance and detect potential vulnerabilities.

## What's Changed

railward v0.2.0: first public release.

A fail-closed, veto-only gate for untrusted AI coding agents that ships with its own adversary and a re-runnable signed proof. The agent proposes; a small pure function decides allow, deny, or ask; and every run signs a hash-chained proof of what was blocked. Flip one rule and the proof goes red.

- 41 attack classes, all refused by the example policy
- fail-open probe battery (a broken policy asks, never allows)
- Ed25519 signed, hash-chained proof; verify in the browser with nothing installed
- Claude Code PreToolUse hook, plus a CLI and a Python API
- offline, pure Python, MIT

pip install railward
