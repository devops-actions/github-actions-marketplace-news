---
title: LoadBearing Architecture Gate
date: 2026-08-29 01:38:31 +00:00
tags:
  - vishweshji
  - GitHub Actions
draft: false
repo: https://github.com/vishweshji/loadbearing
marketplace: https://github.com/marketplace/actions/loadbearing-architecture-gate
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The LoadBearing GitHub Action automates the detection of architectural decisions in pull requests by analyzing code changes and raising alerts if they introduce significant changes that deserve human attention before merging. It uses an AI coding agent to explain detected architectural impacts, ensuring teams are aware of potential risks or dependencies introduced by new features or changes.
---


Version updated for **https://github.com/vishweshji/loadbearing** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loadbearing-architecture-gate) to find the latest changes.

## Action Summary

The LoadBearing GitHub Action automates the detection of architectural decisions in pull requests by analyzing code changes and raising alerts if they introduce significant changes that deserve human attention before merging. It uses an AI coding agent to explain detected architectural impacts, ensuring teams are aware of potential risks or dependencies introduced by new features or changes.

## What's Changed

## What is LoadBearing?

LoadBearing is a local-first, deterministic architecture gate for pull requests. It flags PRs
that introduce a consequential architectural decision - a new persistent schema, a new
deployable, a public contract change, a new external dependency, or a new infrastructure
resource - and can require an explicit human sign-off before merge, only when one of those
actually happens. No account, no hosted service, no telemetry, no LLM in the loop for 0.1.
Every finding is backed by evidence from your diff, not a black-box score.

## What's in this release

Five deterministic detectors, each with its own default severity and documented false
positives/negatives:

| ID | Detects |
| --- | --- |
| LB001 | New external dependency (npm, pip/poetry, Go modules, Cargo) |
| LB002 | New/changed persistent schema (SQL migrations, Prisma, Django, Alembic, Rails) |
| LB003 | New deployable (Kubernetes workload, Compose service, Serverless function) |
| LB004 | Public contract change (OpenAPI, Protobuf, GraphQL) |
| LB005 | New infrastructure resource (Terraform, Kubernetes infra objects, CloudFormation/SAM) |

Three ways to run it, same engine underneath:

- **CLI** (`@loadbearing/cli`) - `review`, `init`, `explain`, `version`
- **GitHub Action** (this release) - a required check that fails on a HIGH-impact PR and clears
  automatically once an authorized reviewer approves the current commit
- **MCP server** (`@loadbearing/mcp`) - native tools for Claude Code, Cursor, and other MCP
  clients

## Quick start

```yaml
name: LoadBearing
on:
  pull_request:
    types: [opened, synchronize, reopened, ready_for_review]
  pull_request_review:
    types: [submitted, dismissed]
permissions:
  contents: read
  pull-requests: read
jobs:
  architecture:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
        with:
          fetch-depth: 0
      - uses: vishweshji/loadbearing@v0.1.0
        with:
          github-token: ${{ github.token }}
```

Full setup for the CLI and MCP server is in the [README](https://github.com/vishweshji/loadbearing#readme).

## Testing

177 automated tests, plus manual verification against six real, unmodified public repositories
(Terraform, Kubernetes, Django, Go, Rust tooling) across both broad-history diffs and
60-150-commit stress tests per repo. Details in [CHANGELOG.md](https://github.com/vishweshji/loadbearing/blob/main/CHANGELOG.md).

## Known limitations

- No AsyncAPI or standalone JSON Schema contract detection yet (LB004)
- No team-based reviewers - a GitHub Actions token can't reliably resolve org team membership
  without extra permissions this project deliberately doesn't request
- First release: not yet exercised on external pull requests beyond this repository's own
  history

See [docs/roadmap.md](https://github.com/vishweshji/loadbearing/blob/main/docs/roadmap.md) for
what's next and explicit non-goals.
