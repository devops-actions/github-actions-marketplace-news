---
title: Mujin agentaudit
date: 2026-06-22 16:01:38 +00:00
tags:
  - mujinlabs
  - GitHub Actions
draft: false
repo: https://github.com/mujinlabs/agentaudit-action
marketplace: https://github.com/marketplace/actions/mujin-agentaudit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mujinlabs/agentaudit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mujin-agentaudit) to find the latest changes.

## What's Changed

First release of the **Mujin agentaudit** Action — run [agentaudit](https://github.com/mujinlabs/agentaudit) in CI to audit AI-agent extensions (Claude Code skills, MCP servers, plugins) for security & quality risks, with results in GitHub **code scanning**.

## Usage
```yaml
permissions:
  contents: read
  security-events: write   # required to upload SARIF
jobs:
  audit:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: mujinlabs/agentaudit-action@v1
        with:
          path: ./skills     # what to scan (default: .)
          fail-on: high       # critical|high|medium|low|none (default: high)
```

## Inputs
| Input | Default | Description |
|---|---|---|
| `path` | `.` | File or directory to scan |
| `fail-on` | `high` | Minimum severity that fails the job |
| `version` | pinned | `mujin-agentaudit` version to install |
| `upload-sarif` | `true` | Upload SARIF to GitHub code scanning |

Findings show up under **Security → Code scanning** and as inline PR annotations; the job fails when a finding meets `fail-on`, blocking the merge.

MIT · built by [Mujin Labs](https://github.com/mujinlabs).
