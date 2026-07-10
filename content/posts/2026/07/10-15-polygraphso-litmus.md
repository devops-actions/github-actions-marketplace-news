---
title: Polygraph MCP gate
date: 2026-07-10 15:08:51 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.33.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.33.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Patch release fixing two false positives in the litmus-v16 scanners, both found by a local regrade of the published set (#115).

**raven-mcp (was A→F): C-01 tool-poisoning.** The exfil-instruction check tested the sink against the whole document, so a benign UI-docs surface that listed form fields (`'Email', 'Password'`) and carried a URL elsewhere tripped it. The sink is now required in the same clause as the verb and object (one bounded, linear regex).

**@tensorfeed/mcp-server (was A→D): C-04 probe 3.2 reflection.** A search tool that echoed our jailbreak payload in a `results for "…"` frame (not a rejection frame) read as amplification. Reflections of the fed payload are now masked in any frame, scoped to the fed payload so a server that splices in genuinely novel injection still fails.

methodologyVersion is unchanged (`litmus-v16`): a monotonic correction that only lifts the two false positives back to A. 486 probes tests pass; both servers re-grade A end to end; demo-toolpoison still F.

Fixes in #115; version bump #116.
