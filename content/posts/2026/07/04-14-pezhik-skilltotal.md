---
title: SkillTotal AI Component Security Scan
date: 2026-07-04 14:28:01 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.25.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.25.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **Prompt-injection/secret precision (ruleset 26): two FPs on a real popular project
  (infiniflow/ragflow) closed, recall-preserving.** (1) Prompt-injection phrases held in C-family
  value-strings — a security tool's own pattern table (`Description: "prompt injection: ignore
  previous instructions"`, `"DAN (Do Anything Now) …"` in a Go file) — no longer flag
  `ST-PROMPT-INJECTION`. A new `code_context` policy `strings_and_comments_all` demotes matches inside
  Go/JS/TS/Rust/… string literals (new `IndexedFile.in_c_string` machinery), opted into only by
  `ST-PROMPT-INJECTION`; every other rule still treats a credential path in a C-family string as real
  access. (2) A commented-out secret in a Python comment (`#     OAuthConfig(client_secret="…")`) no
  longer flags `ST-SECRET-EMBEDDED` — the rule now uses `code_context="comments"`. Recall preserved:
  a live injection in an instruction surface / prose and a real embedded secret in code still fire.
  New unit tests + a benign `fp_go_pattern_defs` fixture; FP floor and efficacy (100%/100%) stay green.


