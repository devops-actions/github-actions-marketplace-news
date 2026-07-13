---
title: a2a-lint
date: 2026-07-13 06:14:20 +00:00
tags:
  - vivek24290
  - GitHub Actions
draft: false
repo: https://github.com/vivek24290/a2a-lint
marketplace: https://github.com/marketplace/actions/a2a-lint
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vivek24290/a2a-lint** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/a2a-lint) to find the latest changes.

## What's Changed

First public release of **a2a-lint** — conformance tooling for [A2A protocol](https://a2a-protocol.org) agents. (Supersedes v1.1.0, whose publish pipeline was misconfigured.)

## Highlights
- **CLI**: `a2a-lint <agent-url> --live` — validates the agent card against the spec and performs live `message/send` (and, when the card declares streaming, `message/stream` SSE) round trips. CI-friendly exit codes: 0 conformant / 1 findings / 2 unreachable.
- **GitHub Action**: `uses: vivek24290/a2a-lint@v1.1.1` — conformance checks on every push.
- **Playground** (Docker): inspect, grade and talk to any A2A agent interactively; shareable permalinks; SSE stream viewer; live conformance badge endpoint.
- **a2a-watch monitor (MVP)**: register deployed agents, scheduled probes with uptime history, webhook alerts on down/recovered.

## Install
```
pip install a2a-lint
```
or run the playground: `docker compose up --build -d` → http://localhost:8090
