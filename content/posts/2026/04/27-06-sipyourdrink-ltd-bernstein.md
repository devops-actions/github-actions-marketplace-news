---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-27 06:36:13 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.9.0
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v1.9.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action and command-line tool designed to automate and orchestrate AI coding workflows. It decomposes a development goal into tasks, distributes them across multiple AI coding agents (e.g., Codex, Claude, Gemini), runs tests, and merges successfully validated code, ensuring efficient and deterministic execution. By avoiding vendor lock-in and offering interoperability with various AI models, it streamlines the development process and eliminates the need for manual task management.

## What's Changed

## v1.9.0

### New features
- **notify:** NotificationSink protocol + first-party drivers
- **review-responder:** address reviewer comments on Bernstein PRs
- **review-pipeline:** YAML-driven multi-phase review pipeline DSL
- **autofix:** bernstein autofix daemon — auto-repair CI failures on PRs
- **fleet:** multi-project supervisory dashboard
- **acp:** native Agent Client Protocol bridge for IDE clients
- **vault:** wire vault-first resolution into ticket / chat / pr commands
- **planning:** managed plan lifecycle with auto-archival + run summary
- **vault:** credential vault module (keyring + AES-GCM file backends)
- **preview:** sandboxed dev-server with public tunnel link
- **mcp-catalog:** community catalog of installable MCP servers

### Bug fixes
- **test:** heartbeat-idle test must exceed liveness-extension window
- **cli:** run-summary tolerates bare-string agent entries; cleanup runs before render
- **cli:** dry-run helper now globs .md/.yaml/.yml in open/ and issues/
- **ci:** document v1.9 commands; resolver tolerates keyring-less hosts

### Documentation
- **readme:** drop duplicate top-of-README author line; bottom one stays
- **nav:** add new blog post to nav
- **blog:** add 'Ten worktrees, ten agents, one merge train' postmortem of release/1.9
- fix broken in-action.gif reference (use existing -small variant)
- update README to include comparison with ralphex

### Tests
- **vault:** unit + integration coverage; ruff cleanup

### CI / Infrastructure
- **release:** switch from GitHub App + OIDC trusted-publishing to GITHUB_TOKEN + PYPI_TOKEN
- replace hardcoded chernistry/ refs after repo transfer to sipyourdrink-ltd org

### Style
- **vault:** apply ruff format
- **autofix:** apply ruff format; whitelist capture_output protocol param
- **review-pipeline:** apply ruff format
- **fleet:** apply ruff format; silence vulture on __aexit__ params
- **acp:** apply ruff format
- **preview:** apply ruff format
- **mcp-catalog:** apply ruff format

### Chores
- **deps:** bump actions/checkout from 4.2.2 to 6.0.2
- **deps:** update mkdocs-material requirement
- bump version to 1.9.0
- **notify:** re-export legacy _PD_SEVERITY + import sort fixes
- **deps:** update mkdocs requirement from <2,>=1.6 to >=1.6.1,<2
- **deps:** bump release-drafter/release-drafter from 7.1.1 to 7.2.0
- **deps:** bump actions/upload-artifact from 4.6.2 to 7.0.1
- **deps:** bump docker/setup-buildx-action from 3.12.0 to 4.0.0
- **deps:** bump actions/github-script from 7.1.0 to 9.0.0
- **deps:** bump codelytv/pr-size-labeler
- **deps:** bump dependabot/fetch-metadata from 3.0.0 to 3.1.0
- **deps:** bump actions/setup-node from 6.3.0 to 6.4.0
- sync uv.lock to v1.8.15

**Full changelog:** https://github.com/sipyourdrink-ltd/bernstein/compare/v1.8.15...v1.9.0

