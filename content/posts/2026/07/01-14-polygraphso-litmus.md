---
title: Polygraph MCP gate
date: 2026-07-01 14:55:11 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.22.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.22.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Minor release shipping two changes from a false-positive review of the harness:

- **#78 `fix(c02)`** — the C-02 egress **D** rationale is now actionable: it names the undeclared host(s) and points authors at `polygraph.egress`, and the CLI itemizes them. Messaging only — every server's letter grade is byte-identical.
- **#79 `feat(sandbox)`** — **pypi/uvx MCP servers are now gradeable under the Docker sandbox**. They stage wheels-only into a venv (no target code runs during staging; fails closed on sdist), resolve offline, and launch with the venv python. Both the connect and C-02 egress paths support pypi; gVisor runtime parity preserved.

`methodologyVersion` is unchanged (`litmus-v10`) — a pypi server is graded by the same rubric as an npm one.
