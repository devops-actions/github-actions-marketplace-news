---
title: Polygraph MCP gate
date: 2026-07-06 15:26:54 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.29.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.29.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

**litmus-v13 — C-01 tool-output-injection false-positive recalibration.**

Honest servers no longer flip to **F** on benign patterns that merely resemble injection. The C-01 static/output text scan now distinguishes real hijack attempts from ordinary documentation:

- angle-bracket **placeholders** in usage text (`<tool>`, `<system|...>`)
- `data:` / format **examples** (`data:image/*;base64,…`, XML/JSX samples)
- benign second-person **prose** in tool descriptions and returned docs
- `U+200B` **zero-width** doc artifacts — regraded MEDIUM, with keyword-evasion still caught HIGH via normalize-then-scan (`ins<ZW>tructions` de-obfuscates before the keyword pass)

Skills keep every invisible character HIGH (S-01 strict). True-positive detection is preserved — the evil / injecting / second-order fixtures still grade **F**.

`methodologyVersion` → **litmus-v13** (grades can move, so older attestations coexist by string).

Ships #101 (fix) + #102 (release bump).
