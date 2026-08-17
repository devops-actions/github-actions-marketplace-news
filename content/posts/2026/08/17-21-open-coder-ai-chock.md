---
title: Chock Governance Check
date: 2026-08-17 21:51:10 +00:00
tags:
  - open-coder-ai
  - GitHub Actions
draft: false
repo: https://github.com/open-coder-ai/chock
marketplace: https://github.com/marketplace/actions/chock-governance-check
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Chock automates governance for AI coding agents by compiling rules into deterministic guardrails, ensuring consistency across teams and projects. It compiles rules to git hooks, CI gates, native pre-execution hooks in Claude Code and Cursor, and generates `AGENTS.md` for Copilot, Codex, Gemini, and other agents. This ensures that all agents adhere to the same policies, preventing unintended behavior such as force-pushes to main branches or inappropriate commits.
---


Version updated for **https://github.com/open-coder-ai/chock** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chock-governance-check) to find the latest changes.

## Action Summary

Chock automates governance for AI coding agents by compiling rules into deterministic guardrails, ensuring consistency across teams and projects. It compiles rules to git hooks, CI gates, native pre-execution hooks in Claude Code and Cursor, and generates `AGENTS.md` for Copilot, Codex, Gemini, and other agents. This ensures that all agents adhere to the same policies, preventing unintended behavior such as force-pushes to main branches or inappropriate commits.

## What's Changed

## 0.1.0 — First public release

Everything below is the launch surface; `0.0.1a0` was a name-claiming pre-release, so this
is the first version with real contents.

- **Policies as code**: versioned policy manifests committed to the repo, compiled by
  `chock sync` to every enforcement surface each agent supports.
- **Enforcement surfaces**: pre-tool-use guards (Claude Code and Cursor), git hooks,
  a CI gate (`chock sync --ci` + commit-range mode), and ambient rules for
  instruction-file agents.
- **Coverage honesty**: per-agent, per-policy claims at three levels — `enforced`,
  `enforced-at-commit`, `advisory` — raised only when the installed mechanism is
  witnessed for that agent.
- **Arm-on-clone**: cloned repos re-arm through an ambient rule plus a consented
  SessionStart hook; git never clones hooks and Chock does not fight that boundary.
- **Catalog adoption**: `chock add <id>` installs hash-pinned policies from any
  catalog, public or private; every published policy ships with replayed evals.
- **Compliance frameworks built in**: OWASP Agentic Security Top-10, MITRE ATLAS,
  NIST AI RMF, EU AI Act — manifests claim framework coverage, `chock check` reports it.
- **Versioning contract**: PATCH releases never change compiled output (enforced by a
  golden-file suite); MINOR releases may.


