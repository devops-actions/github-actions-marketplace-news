---
title: SkillTotal AI Component Security Scan
date: 2026-07-01 22:41:06 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.24.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.24.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **Prompt-injection/secret precision (ruleset 25): two more FPs on defensive/security content
  closed, recall-preserving.** (1) A `-----BEGIN PRIVATE KEY-----` format marker held as a string
  constant (auth code building a PEM, e.g. `@ai-sdk/google-vertex`) no longer flags
  `ST-SECRET-EMBEDDED` — the pattern now requires actual base64 key material after the marker; a real
  multi-line key still fires. (2) A credential path cited inside a markdown inline-code span in a
  security guide (`` `write to ~/.ssh` ``, e.g. `claude-blog`) is routed to `needs_review` instead of
  `ST-SENS-PATH` — scoped to markdown, so a JS template literal in code and a bare path in prose still
  fire. Both removed spurious `ST-COMBO-EXFIL` escalations. New unit tests + negative corpus samples;
  FP floor and benign corpus stay at zero.


