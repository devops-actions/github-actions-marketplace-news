---
title: Polygraph MCP gate
date: 2026-07-03 06:36:00 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.24.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.24.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Methodology **litmus-v12** — two false-positive fixes so a server's correct, defensive behavior is no longer graded as a fault.

- **C-04 (probe 3.2):** a validation error that quotes the rejected input back (e.g. Pydantic `input_value='…'`) is a safe rejection, not server-generated amplification — no longer a false D. (#85)
- **C-02 (probe 2.1):** a mutation verb under a negation ("Cannot create or revoke keys") no longer reads as a permission-mislabel lie; clause-scoped, so a real "Deletes… Cannot be undone." still trips. (#85)

`methodologyVersion` moves `litmus-v11 → litmus-v12` (a string, so older attestations coexist). Release bump in #86. Both fixes are covered by regression tests reproduced from real servers.
