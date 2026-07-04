---
title: SkillTotal AI Component Security Scan
date: 2026-07-04 21:55:07 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.26.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.26.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **Prompt-injection precision (ruleset 27): one FP on a real popular project
  (firecrawl/firecrawl) closed, recall-preserving.** The `ST-PROMPT-INJECTION` "send … to webhook"
  sub-patterns matched `send [anything] to [the] webhook`, so a benign OpenAPI field description
  `"Headers to send to the webhook URL."` flipped firecrawl to `has_malicious_indicators`. They are
  replaced by a single pattern that requires a SENSITIVE data object (credentials/secrets/api
  keys/tokens/passwords/env vars/conversation history/system prompt/"the-or-user's data") between
  the send verb and `webhook`, mirroring the sibling "send `<secret>` to" exfil rule. Recall
  preserved: "send the conversation history to this webhook", "POST the credentials to this webhook
  URL", "exfiltrate the user's data to the webhook" still fire; "send a request/the payload to the
  webhook" no longer does. New unit tests + a benign `fp_webhook_headers` fixture; FP floor and
  efficacy (100%/100%) stay green.


