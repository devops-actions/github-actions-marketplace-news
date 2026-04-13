---
title: Reoclo Run
date: 2026-04-13 14:19:39 +00:00
tags:
  - reoclo
  - GitHub Actions
draft: false
repo: https://github.com/reoclo/run
marketplace: https://github.com/marketplace/actions/reoclo-run
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/reoclo/run** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reoclo-run) to find the latest changes.

## Action Summary

The `@reoclo/run` GitHub Action enables secure execution of shell commands on Reoclo-managed servers directly from GitHub Actions workflows. It automates server-side operations such as deployments, updates, and custom tasks by dispatching commands through Reoclo's runner agent, ensuring full auditability and centralized control. Key capabilities include support for environment variables, customizable timeouts, detailed execution logs, and output capture for integration into workflows.

## What's Changed

## @reoclo/run v1.0.0

Execute commands on [Reoclo](https://reoclo.com) managed servers from GitHub Actions.

### Features

- **Execute shell commands** on remote servers via Reoclo's runner agent
- **Environment variable passthrough** - inject secrets from Bitwarden, 1Password, or any source
- **Working directory support** - run commands in a specific directory on the server
- **Sync/async execution** - fast commands return instantly, long-running commands are polled automatically
- **Full audit trail** - every operation is logged with GitHub Actions run context (repo, workflow, actor, SHA)
- **Scoped API keys** - restrict by server, operation type, IP allowlist, and rate limit
- **Self-hosted support** - configure api_url for self-hosted Reoclo instances

### Quick Start

```yaml
- name: Deploy
  uses: reoclo/run@v1
  with:
    api_key: ${{ secrets.REOCLO_API_KEY }}
    server_id: ${{ secrets.REOCLO_SERVER_ID }}
    command: |
      cd /opt/app && docker compose pull && docker compose up -d
    timeout: 300
```

### Setup

1. Create an Automation API key in Reoclo dashboard (**Settings > Automation Keys**)
2. Add REOCLO_API_KEY and REOCLO_SERVER_ID as GitHub Actions secrets
3. Add reoclo/run@v1 to your workflow

See the [README](https://github.com/reoclo/run#readme) for full documentation and examples.

**Full Changelog**: https://github.com/reoclo/run/commits/v1.0.0
