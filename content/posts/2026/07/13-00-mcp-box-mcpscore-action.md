---
title: mcpscore — MCP server audit
date: 2026-07-13 00:11:50 +00:00
tags:
  - mcp-box
  - GitHub Actions
draft: false
repo: https://github.com/mcp-box/mcpscore-action
marketplace: https://github.com/marketplace/actions/mcpscore-mcp-server-audit
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mcp-box/mcpscore-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpscore-mcp-server-audit) to find the latest changes.

## What's Changed

First release of the **mcpscore** GitHub Action — [Lighthouse for MCP](https://docs.mcpscore.dev) in your CI.

Audit an MCP server on every pull request, fail the build when quality drops below a threshold you set, and get the report as a PR comment.

```yaml
- uses: mcp-box/mcpscore-action@v1
  with:
    target: https://your-server.example/mcp
    min-score: 80
```

What it does

- Score gate — fail the job when the main score falls below min-score (a percentage).
- Readiness gate — optionally require readiness for the upcoming MCP 2026-07-28 spec via min-readiness (reported separately, never mixed into the main score).
- PR comment — posts one report comment and updates it in place on re-runs: score, a pass/fail breakdown by severity, spec version and era, and every failed check by rule_id.
- Job summary + outputs — the same report in the run summary, the raw JSON on disk, and every number exposed as a step output (score, percentage, era, readiness-*, ...).
- Deterministic — no API keys, no LLM calls; the same server state always produces the same result, in seconds.

Works against remote servers (Streamable HTTP / SSE) and local .py / .js servers.

Links:

- Documentation: https://docs.mcpscore.dev/github-action
- Scoring methodology: https://docs.mcpscore.dev/methodology
- mcpscore CLI: https://github.com/mcp-box/mcpscore

Full changelog: https://github.com/mcp-box/mcpscore-action/commits/v1.0.0
