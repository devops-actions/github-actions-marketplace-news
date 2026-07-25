---
title: cowork-harness
date: 2026-07-25 06:34:21 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.10.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action provides a scriptable and CI-friendly test harness for Claude Cowork skills, allowing developers to reproduce its observable runtime contract across various scenarios without using the locked Desktop app. It supports multiple fidelity tiers including local development (`replay`), linting (`lint`), and live testing with Claude Desktop, Docker, Lima, or ARM64 hardware. The action is ideal for skill testing and CI/CD processes, ensuring that skills work as intended across different environments and constraints.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action provides a scriptable and CI-friendly test harness for Claude Cowork skills, allowing developers to reproduce its observable runtime contract across various scenarios without using the locked Desktop app. It supports multiple fidelity tiers including local development (`replay`), linting (`lint`), and live testing with Claude Desktop, Docker, Lima, or ARM64 hardware. The action is ideal for skill testing and CI/CD processes, ensuring that skills work as intended across different environments and constraints.

## What's Changed


### Changed

- **The packaged `cowork-harness` skill no longer carries a per-release version history.** SKILL.md's
  "what the floor gates, by release" list had grown to 19 releases / ~15 KB (about a fifth of the file)
  and was self-defeating: every entry described a feature at or below the floor, so anyone meeting the
  floor already had all of it. Because SKILL.md is loaded into an agent's context on every invocation,
  that was pure token cost for content that cannot change behaviour. The version floor (and *why* to pin
  it rather than use `@latest`) stays; the history now lives where it belongs — this changelog — with a
  pointer for anyone diagnosing an older CLI. SKILL.md: 77 KB → 62 KB.

### Added

- **Skill/plugin discovery SDK-MCP servers** (`mcp__skills__list_skills`/`suggest_skills`,
  `mcp__plugins__list_plugins`/`search_plugins`/`suggest_plugin_install`) — modeled on `container` and
  `hostloop` (and `cowork`, which resolves to one of those) alongside the existing `cowork`/`workspace`
  servers, via a new `combineSdkMcp` composition helper (`src/agent/session.ts`). Every tool is
  `alwaysLoad` so it surfaces in `system/init.tools` from turn one, matching real Cowork; `list_skills`/
  `list_plugins` are populated deterministically from the session's actually-mounted skills/plugins,
  and `suggest_skills`/`search_plugins`/`suggest_plugin_install` return a deterministic empty-catalog
  advisory result (the real add/install catalog is out of band). Two gates control the `skills` server's
  `suggest_skills` tool — `suggestSkillsEnabled` (default on) and `proactiveSkillSuggestEnabled` (default
  off, adds a `trigger` param) — read from the synced baseline via a new bare-boolean `readGateBool`
  reader, with new session-level overrides `skills.suggest_enabled` / `skills.proactive_suggest_enabled`
  (see [docs/session.md](./docs/session.md)). `tool_available: "mcp__skills__.*"` /
  `"mcp__plugins__.*"` is no longer a false negative on `container`/`hostloop`/`cowork` (still absent on
  `microvm`/`protocol` — see [docs/fidelity-gaps.md](./docs/fidelity-gaps.md)). Fidelity scope: the tool
  inventory, inputSchemas, gating, and the `list_skills`/`list_plugins` envelopes are asar/session-log
  derived; the tool **description strings** and the `search_plugins`/`suggest_plugin_install` envelopes are
  a faithful reconstruction rather than byte-captured — see [docs/fidelity-gaps.md](./docs/fidelity-gaps.md).
  Both catalogs report what the sandbox will actually **receive**: a plugin skill directory that staging
  drops (untracked, under the default git-tracked staging boundary) is omitted from `list_skills` *and*
  `list_plugins`, including on `--resume`, so the two never contradict each other within a run.

### Fixed

- **`chat --fidelity container` declared SDK-MCP tools it never served.** The container branch built its
  SDK-MCP bundle and then discarded it, so `mcp__cowork__present_files` was advertised on `--tools`/
  `--allowedTools` while its server was never announced in `initialize` — calling it failed, and
  `context.mcpServers` omitted `cowork`. (`run --fidelity container` was unaffected; this was the
  interactive `chat` lane only.) The bundle is now forwarded, which also serves the new
  `skills`/`plugins` discovery servers on that lane.



## What's Changed
* release: 1.10.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/75
* docs(skill): drop the per-release version history from SKILL.md by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/76


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.10.0
