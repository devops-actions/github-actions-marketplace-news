---
title: Agent Gate for AI PRs
date: 2026-07-10 15:07:12 +00:00
tags:
  - sjh9714
  - GitHub Actions
draft: false
repo: https://github.com/sjh9714/Agent-Gate
marketplace: https://github.com/marketplace/actions/agent-gate-for-ai-prs
version: v0.3.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/sjh9714/Agent-Gate** to version **v0.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-gate-for-ai-prs) to find the latest changes.

## What's Changed

# Agent Gate v0.3.1 Release Notes

Agent Gate v0.3.1 is the first public CLI release of the v0.3 line. The npm
package is scoped as `@jinhyuk9714/agent-gate`; the executable and product name
remain `agent-gate` and Agent Gate.

## Try It

```bash
npx --yes @jinhyuk9714/agent-gate@0.3.1 scan owner/repo#123
```

The CLI analyzes public pull requests without cloning, checking out, installing,
or executing target-repository code. Private repositories and higher GitHub API
limits use `GH_TOKEN`, with `GITHUB_TOKEN` as the fallback.

## Highlights

- Shared API-only PR collection for the CLI and GitHub Action.
- Fail-closed file-list and content integrity checks.
- Differential GitHub Actions privilege and supply-chain findings.
- Exact expiring waivers and deterministic finding IDs.
- Narrow, explainable agentic workflow injection detection.
- Bounded, sanitized human, Markdown, JSON, summary, and comment reports.
- Signed release tags and npm provenance for the exact tested tarball.

The `v0.3.0` tag remains immutable. npm rejected its unscoped `agent-gate`
package name as too similar to the existing `agentgate` package, so v0.3.1
records the scoped package identity in source before publication.

See the [v0.3 migration guidance](migration-v0.3.0.md), [CLI reference](cli.md),
and [release checklist](release-checklist.md).

