---
title: aislop Quality Gate
date: 2026-05-16 21:26:30 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

The GitHub Action **`aislop`** serves as an automated quality gate for AI-written code, analyzing projects to identify issues like dead code, oversized functions, unused imports, and other common artifacts left by AI agents. It provides a deterministic scoring system (0–100) across multiple programming languages using regex and AST-based analysis, without relying on large language models (LLMs). Key capabilities include scanning codebases for issues, auto-fixing mechanical problems, and integrating with coding agents and CI pipelines for streamlined quality assurance.

## What's Changed

Anonymous, opt-out telemetry rebuilt from the ground up: structured events across the CLI, the MCP server, and the agent hooks. PostHog dashboards can finally break down by engine, by language, by package manager, by command.

## Install

```bash
npx aislop@0.9.0 scan .
# or globally:
npm i -g aislop@0.9.0
```

## What shipped

**Telemetry v2 event scheme.** Six structured events replace `cli_scan` / `cli_fix` / `cli_ci`:

- `cli_installed` — fires once per machine, when `~/.aislop/install_id` is first created.
- `cli_command_started` and `cli_command_completed` — every command (scan, fix, ci, init, doctor, rules, badge, hook install/uninstall/status/baseline).
- `mcp_server_started` and `mcp_tool_called` — the `aislop-mcp` stdio server and each tool invocation.
- `hook_scan_completed` — Claude, Cursor, and Gemini agent hooks.

**Flattened, indexable properties.** Per-engine counters (`engine_<name>_issues`, `engine_<name>_ms`), per-language flags (`lang_typescript`, `lang_javascript`, `lang_python`, `lang_java`), `language_summary`, `score_bucket`, `file_count_bucket`, `package_manager`, `is_ci`, `exit_code`, `duration_ms`, `error_kind`. Previously nested objects/arrays were not indexable by PostHog.

**Stable anonymous install ID.** Random UUIDv4 stored at `~/.aislop/install_id` (honors `XDG_STATE_HOME` on Linux), `0600` permissions, atomic write for concurrent safety. Replaces the prior `hostname-platform-arch` djb2 hash. Deleting the file re-rolls identity.

**Redaction allowlist.** Every outgoing property passes through a frozen allowlist at the transport boundary. Anything not on the list is dropped, even if a future caller passes it accidentally. Never collected: file paths, project names, repo names, branch names, source text, raw diagnostics, secrets.

**Debug and dry-run modes.**

```bash
AISLOP_TELEMETRY_DEBUG=1 aislop scan .     # print every outgoing event to stderr
AISLOP_TELEMETRY_DRY_RUN=1 aislop scan .   # build the payload, never send it
```

## Also

- New `withCommandLifecycle()` wrapper replaces inlined `trackEvent({...})` blocks in every command. Fires `_completed` even on throw, awaits flush before returning. Fixes a small bug where flush was skipped on the `exitCode === 0` path.
- Telemetry module split: single-file `src/utils/telemetry.ts` replaced by a focused `src/telemetry/` layer (`client`, `events`, `lifecycle`, `identity`, `redaction`, `language`, `env`, `index`).
- Opt-out precedence tweak: explicit `telemetry.enabled: true` in `.aislop/config.yml` now overrides the `CI=true` default. Env-var opt-outs (`AISLOP_NO_TELEMETRY=1`, `DO_NOT_TRACK=1`) still win over everything.

## Numbers

- 791 tests passing (755 baseline + 36 new)
- Self-scan: 100 / 100 Healthy
- Packaged size: 213.6 kB (21 files)
- Anonymous PostHog `distinct_id` resets for every existing user (hostname hash → UUIDv4). Dashboards built on v1 event names continue to receive historical data.

## Opt out

Three ways, any of them works:

```bash
AISLOP_NO_TELEMETRY=1 aislop scan
DO_NOT_TRACK=1 aislop scan
```

Or in `.aislop/config.yml`:

```yaml
telemetry:
  enabled: false
```

Docs: [docs/telemetry.md](https://github.com/scanaislop/aislop/blob/main/docs/telemetry.md)

## What's Changed
* docs: surface the new aislop badge command in README by @heavykenny in https://github.com/scanaislop/aislop/pull/57
* Bot/sync from main by @heavykenny in https://github.com/scanaislop/aislop/pull/62
* chore: sync main → develop by @heavykenny in https://github.com/scanaislop/aislop/pull/66
* chore: sync main → develop by @github-actions[bot] in https://github.com/scanaislop/aislop/pull/68
* chore: sync main → develop by @github-actions[bot] in https://github.com/scanaislop/aislop/pull/70
* chore: sync main → develop by @heavykenny in https://github.com/scanaislop/aislop/pull/73
* fix: warn when dependency audit tools are missing by @heavykenny in https://github.com/scanaislop/aislop/pull/76
* feat(scoring): per-engine cap, file-aware smoothing, fixable discount by @heavykenny in https://github.com/scanaislop/aislop/pull/74
* chore: sync main → develop by @heavykenny in https://github.com/scanaislop/aislop/pull/78
* feat(ci): GitHub Step Summary writer with help text per finding by @heavykenny in https://github.com/scanaislop/aislop/pull/79
* chore: clarify aislop PR checks by @heavykenny in https://github.com/scanaislop/aislop/pull/80
* chore: sync main → develop by @heavykenny in https://github.com/scanaislop/aislop/pull/82
* fix(contributors): include merged-PR authors so squash-merges don't drop external contributors by @heavykenny in https://github.com/scanaislop/aislop/pull/83
* feat(lint): TypeScript typecheck engine by @heavykenny in https://github.com/scanaislop/aislop/pull/84
* copy(positioning): standards-layer-and-quality-gate framing + prominent per-edit hook section in README by @heavykenny in https://github.com/scanaislop/aislop/pull/85
* feat(ai-slop): hallucinated-import detector — flags imports of packages not in any manifest by @heavykenny in https://github.com/scanaislop/aislop/pull/86
* feat(mcp): aislop-mcp server — scan, fix, why, baseline as MCP tools by @heavykenny in https://github.com/scanaislop/aislop/pull/89
* feat(ai-slop): deepen Python / Go / Rust coverage with 7 new patterns by @heavykenny in https://github.com/scanaislop/aislop/pull/90
* feat(hook,ai-slop): hook envelope v2 + ai-slop/duplicate-import rule by @heavykenny in https://github.com/scanaislop/aislop/pull/87
* feat(hook,claude): subscribe to FileChanged for .aislop/config.yml, .aislop/rules.yml, package.json by @heavykenny in https://github.com/scanaislop/aislop/pull/88
* fix: reduce false positives based on 25-project OSS validation by @heavykenny in https://github.com/scanaislop/aislop/pull/91
* chore: clean up after dogfooding scan by @heavykenny in https://github.com/scanaislop/aislop/pull/92
* chore: bump version to 0.8.0 by @heavykenny in https://github.com/scanaislop/aislop/pull/93
* fix(ci): remove pnpm cache from quality-gate job by @heavykenny in https://github.com/scanaislop/aislop/pull/95
* feat: rename action to 'aislop Quality Gate' for Marketplace by @heavykenny in https://github.com/scanaislop/aislop/pull/96
* chore: Release v0.8.1 - README improvements by @heavykenny in https://github.com/scanaislop/aislop/pull/98
* chore: bump version to 0.8.2 by @heavykenny in https://github.com/scanaislop/aislop/pull/101
* fix(ai-slop): respect tsconfig path aliases in hallucinated-import detection by @heavykenny in https://github.com/scanaislop/aislop/pull/105
* feat(telemetry): v2 event schema with lifecycle wrapper, redaction, and stable install_id by @heavykenny in https://github.com/scanaislop/aislop/pull/107
* chore: release v0.9.0 by @heavykenny in https://github.com/scanaislop/aislop/pull/108
* chore: sync main → develop (resolve historical squash divergence) by @heavykenny in https://github.com/scanaislop/aislop/pull/110
* Release v0.9.0 (develop → main) by @heavykenny in https://github.com/scanaislop/aislop/pull/109

## New Contributors
* @github-actions[bot] made their first contribution in https://github.com/scanaislop/aislop/pull/68

**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.8.3...v0.9.0
