---
title: Sentrik Gate
date: 2026-07-07 05:18:42 +00:00
tags:
  - maxgerhardson
  - GitHub Actions
draft: false
repo: https://github.com/maxgerhardson/sentrik-community
marketplace: https://github.com/marketplace/actions/sentrik-gate
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/maxgerhardson/sentrik-community** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentrik-gate) to find the latest changes.

## What's Changed

## v1.7.0

- **`sentrik deadlines`** — regulatory enforcement countdown for your enabled packs: EU AI Act (post-omnibus timeline), EU Cyber Resilience Act, CMMC 2.0, PCI DSS, ISO 27001, FDA §524B (`--all`, `--past`, `--json`)
- **Anonymous usage telemetry** (opt-out) — one daily ping: random id, version, OS, Python version, command name. Nothing else, ever. First-run notice, full disclosure at https://docs.sentrik.dev/telemetry/ — disable with `SENTRIK_TELEMETRY=0` or `telemetry_enabled: false`
- **Complete binary data files** — `sentrik dashboard`, the auditor portal, and CVE function-level reachability now work from the standalone binary (previously wheel-only)
- **First-run output fixes** — severity labels render correctly; findings table no longer collapses in narrow/CI terminals
- Includes all v1.6.0 fixes (working Linux binary, npm wrapper error handling)

Install: `npm install -g sentrik` or `pip install sentrik`
