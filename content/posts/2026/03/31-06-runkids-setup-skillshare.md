---
title: Setup Skillshare
date: 2026-03-31 06:13:16 +00:00
tags:
  - runkids
  - GitHub Actions
draft: false
repo: https://github.com/runkids/setup-skillshare
marketplace: https://github.com/marketplace/actions/setup-skillshare
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/runkids/setup-skillshare** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-skillshare) to find the latest changes.

## Action Summary

The `setup-skillshare` GitHub Action automates the installation and initialization of the Skillshare CLI, a universal skill manager for AI coding agents. It simplifies the process of syncing, installing, and auditing AI skills across multiple tools and environments, enabling teams to manage skills from a single source of truth. Additionally, it provides built-in security scanning to detect vulnerabilities in AI skills, enhancing automation and security workflows in CI/CD pipelines.

## What's Changed

## setup-skillshare v1.0.0

GitHub Action to install and initialize [skillshare](https://github.com/runkids/skillshare) CLI — the universal skill manager for AI coding agents (Claude, Cursor, Codex, Gemini, and 50+ more).

### Setup & Init

- Install skillshare binary with version pinning (`latest` or specific version)
- Auto-run `skillshare init` with CI-friendly defaults
- **Global mode**: `--no-copy --no-skill --all-targets --no-git` + configurable `source`, `targets`, `mode`, `git`, `remote`
- **Project mode**: `init -p` with `--targets` and `--mode` only
- Multi-platform: `ubuntu-latest`, `macos-latest`, `macos-13`

### Security Audit

- Run `skillshare audit` with configurable severity threshold
- Output formats: `text`, `json`, `sarif`, `markdown`
- Audit profiles: `default`, `strict`, `permissive`
- SARIF integration with GitHub Code Scanning
- Save audit results to file for downstream processing

### Reliability

- **No `gh` CLI dependency** — version resolution via HTTP redirect, `gh` as fallback. Works on self-hosted runners.
- **Download retry** — `curl --retry 3` for transient network failures
- **Same-run cache** — binary cached in `$RUNNER_TOOL_CACHE`, skipped if already downloaded
- **Shell safety** — all inputs passed through `env:` vars, never expanded directly in shell
- **Source validation** — clear error if source directory not found

### Outputs

- `version` — the installed skillshare version
- `audit-exit-code` — `0` = clean, `1` = findings found

### Quick Start

```yaml
- uses: runkids/setup-skillshare@v1
  with:
    source: ./skills
- run: skillshare sync
```

See [README](https://github.com/runkids/setup-skillshare#readme) for all 15+ usage examples.
