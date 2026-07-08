---
title: Supply Chain Guard
date: 2026-07-08 22:29:09 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## What's Changed

### v5.10.0 (2026-07-08)
**GitLost-class agentic-workflow posture detection**

Closes the gap surfaced by Noma Security's "GitLost" disclosure (July 2026): an
AI agent driven by a GitHub workflow can be prompt-injected through an untrusted
issue/PR into leaking private-repo data via a public comment. The runtime attack
is GitHub's to fix; what is static and checked-in is the vulnerable POSTURE, and
that is now scannable before an attacker files the issue.

- **`GHA_AGENT_UNTRUSTED_PROMPT`** (critical): an AI-agent step (claude-code-action,
  gh-aw, gemini/codex CLIs, ...) interpolates attacker-controllable event context
  (issue/PR/comment body or title) into its prompt on an untrusted trigger.
- **`GHA_AGENT_PUBLIC_POST`** (high): the agent job also holds issues:write /
  pull-requests:write - the public-comment exfiltration channel.
- **`GHA_AGENT_CROSS_REPO_TOKEN`** (high): a non-default token secret is fed to the
  agent (the cross-repo read that widens a single-repo injection to an org-wide leak).
- **`GHA_AGENT_NO_AUTHOR_GATE`** (medium): an issue/comment-triggered agent with no
  author-trust gate - the anonymous entry point GitLost used.
- **New `agentic-workflow-scanner.ts`**: scans GitHub Agentic Workflow markdown
  (`.github/workflows/*.md`, the gh-aw format the .yml-only scanner skipped) for
  `AGENTIC_WF_UNTRUSTED_TRIGGER`, `AGENTIC_WF_PUBLIC_POST_TOOL`, `AGENTIC_WF_BROAD_ACCESS`,
  and LLM control tokens in the instruction body (`AGENTIC_WF_PROMPT_INJECTION`). The
  compiled `*.lock.yml` companion is already covered by the YAML scanner's new rules.
- **Correlation incident** "GitLost-class Agentic Workflow Exfiltration Posture"
  (any 2 signals, requires at least one strong ingest/post signal) plus a scoring fix:
  `AGENTIC_WF_` / `SKILL_` / `MCP_` findings now count toward the CI/CD risk dimension
  (previously they contributed to no dimension).
- **AST robustness**: `workflow-ast.ts` now captures agent-step prompt/token/env fields
  and parses the compact `on: { ... }` flow-map trigger form.
- **Class-level hardening** (not a GitLost detector, but the same attack class): the
  prompt-injection patterns now cover `.github/ISSUE_TEMPLATE/*` and `PULL_REQUEST_TEMPLATE`,
  and the invisible-Unicode detection now catches Unicode Tags (U+E0000..U+E007F) ASCII
  smuggling in agent-readable files.
- No IOC feed changes: GitLost has no attacker infrastructure (the disclosure PoC
  repos are researcher infra and are intentionally NOT blocklisted).

