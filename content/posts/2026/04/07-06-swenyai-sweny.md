---
title: SWEny AI
date: 2026-04-07 06:15:28 +00:00
tags:
  - swenyai
  - GitHub Actions
draft: false
repo: https://github.com/swenyai/sweny
marketplace: https://github.com/marketplace/actions/sweny-ai
version: actions/e2e/v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/swenyai/sweny** to version **actions/e2e/v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sweny-ai) to find the latest changes.

## Action Summary

The SWEny GitHub Action automates the creation, execution, and monitoring of AI-driven workflows using natural language descriptions. It simplifies complex tasks by converting user-provided instructions into Directed Acyclic Graphs (DAGs) with structured outputs, conditional routing, and appropriate tools integrated at each step. This action streamlines processes like security audits, dependency scans, and issue tracking, offering users an efficient way to build and run workflows directly in CI environments or via a CLI.

## What's Changed

First release of **`swenyai/sweny/actions/e2e`** — an agentic end-to-end test runner for GitHub Actions.

Builds on [`actions/run`](https://github.com/swenyai/sweny/tree/main/actions/run) and adds everything you typically need to run an LLM-driven E2E suite against a deployed app:

- Installs [`agent-browser`](https://www.npmjs.com/package/agent-browser) (accessibility-tree-based browser automation that agents drive via shell)
- Exposes a `BASE_URL` input pointing at the environment under test
- Uploads the screenshots / results directory as a workflow artifact (always — even when the workflow fails)

You provide the workflow YAML; the action handles the install, execution, and artifact upload.

## Usage

```yaml
name: E2E UAT
on:
  workflow_run:
    workflows: ["Deploy to Staging"]
    types: [completed]

jobs:
  e2e:
    runs-on: macos-latest
    timeout-minutes: 20
    steps:
      - uses: actions/checkout@v4
      - uses: swenyai/sweny/actions/e2e@v4
        with:
          workflow: .sweny/e2e/uat.yml
          base-url: https://staging.example.com
          claude-oauth-token: ${{ secrets.CLAUDE_CODE_OAUTH_TOKEN }}
        env:
          AUTH0_M2M_CLIENT_ID: ${{ secrets.AUTH0_M2M_CLIENT_ID }}
          AUTH0_M2M_CLIENT_SECRET: ${{ secrets.AUTH0_M2M_CLIENT_SECRET }}
```

## Inputs

| Input | Required | Default |
|---|---|---|
| `workflow` | yes | — |
| `claude-oauth-token` | one of | — |
| `anthropic-api-key` | one of | — |
| `base-url` | no | — |
| `cli-version` | no | `latest` |
| `agent-browser-version` | no | `latest` |
| `node-version` | no | `24` |
| `working-directory` | no | `.` |
| `screenshots-path` | no | `results/` |
| `artifact-name` | no | `e2e-screenshots` |
| `artifact-retention-days` | no | `14` |

## Versioning

This action ships out of the `swenyai/sweny` repo. The moving `@v4` tag tracks the same release stream as the root `swenyai/sweny@v4` action — pin to `@v4` for the latest, or to this immutable tag (`@actions/e2e/v1.0.0`) for stability.

See the [README](https://github.com/swenyai/sweny/blob/main/actions/e2e/README.md) for full docs.
