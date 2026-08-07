---
title: Zuke Build
date: 2026-08-07 22:21:23 +00:00
tags:
  - zuke-build
  - GitHub Actions
draft: false
repo: https://github.com/zuke-build/zuke
marketplace: https://github.com/marketplace/actions/zuke-build
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is a small and explicit build automation tool that uses tagged template runs processes with sane defaults (throw on failure, capture output) and is injection-safe. It can generate GitHub Actions, GitLab CI, or Azure Pipelines YAML based on the provider specified in the configuration. The main purpose of this action is to automate code-based builds without relying on plugins or bespoke DSLs, providing a clean and refactor-safe approach to CI/CD workflows.
---


Version updated for **https://github.com/zuke-build/zuke** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zuke-build) to find the latest changes.

## Action Summary

This GitHub Action is a small and explicit build automation tool that uses tagged template runs processes with sane defaults (throw on failure, capture output) and is injection-safe. It can generate GitHub Actions, GitLab CI, or Azure Pipelines YAML based on the provider specified in the configuration. The main purpose of this action is to automate code-based builds without relying on plugins or bespoke DSLs, providing a clean and refactor-safe approach to CI/CD workflows.

## What's Changed

First release of the `zuke-build/zuke` composite action.

Three steps every Zuke job starts with, in one:

1. **Harden the runner** — `step-security/harden-runner`, before anything it governs.
2. **Check out** the repository.
3. **Run a Zuke target.**

```yaml
jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - uses: zuke-build/zuke@v1
        with:
          target: ci
```

It goes **first** in the job — a remote action is fetched by the runner, not from your workspace, so it needs no checkout before it. That's the point: an egress policy only governs what runs after it.

### Inputs

| Input | Default | What it does |
| --- | --- | --- |
| `target` | `""` | The Zuke target to run. Omit to harden and check out only. |
| `egress-policy` | `audit` | `audit` records outbound traffic; `block` enforces `allowed-endpoints`. |
| `allowed-endpoints` | `""` | Space-separated `host:port` list permitted under `block`. |
| `persist-credentials` | `false` | Leave the token in git config, for a later push. |
| `fetch-depth` | `1` | Commits to fetch. `0` is the full history, which a secret scan needs. |
| `deno-version` | `""` | Install this Deno. Usually unnecessary — the `./zuke` launcher bootstraps its own. |

### Two things worth knowing

**Pin the SHA.** `@v1` moves. Whoever can move it can run code in your job — and you've delegated your hardening to this step, so a moved tag could simply not harden:

```yaml
- uses: zuke-build/zuke@04ec1c67b0937db3bb5d19fe2b6f62a506e04432 # v1.0.0
```

**`egress-policy` starts at `audit`, not `block`** — harden-runner's own default is `block`. Deliberate, since `block` with an empty `allowed-endpoints` fails a build on its first outbound request. It means the default configuration *records* egress rather than enforcing it. Run once on `audit`, take the endpoint list from the run's insights, then set both.

Running a target needs a committed `./zuke` launcher — that's what `zuke setup` writes. Without one the step fails with an annotation naming the fix.

**Docs:** [the action](https://github.com/zuke-build/zuke/blob/master/docs/getting-started.md#the-zuke-buildzuke-action) · [Zuke](https://github.com/zuke-build/zuke)
