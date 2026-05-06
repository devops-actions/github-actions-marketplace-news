---
title: AI Agent Discipline Linter
date: 2026-05-06 15:05:10 +00:00
tags:
  - naimkatiman
  - GitHub Actions
draft: false
repo: https://github.com/naimkatiman/continuous-improvement
marketplace: https://github.com/marketplace/actions/ai-agent-discipline-linter
version: v3.6.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/naimkatiman/continuous-improvement** to version **v3.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-agent-discipline-linter) to find the latest changes.

## Action Summary

This GitHub Action enforces disciplined behavior in AI coding agents, such as Claude Code, by implementing a structured 7-step workflow (research, plan, execute, verify, reflect, learn, iterate) to prevent common failures like skipping steps or incomplete verification. It automates this process using 13 integrated skills, including test-driven development enforcement, verification loops, and an instinct engine that adapts to usage patterns. Additionally, it provides a transcript linter for CI to catch violations of the workflow, ensuring consistent and reliable agent performance.

## What's Changed

### Added
- **Node observer + `npx continuous-improvement backfill`** (#52) — replaces the bash thin-schema fallback that depended on `jq`. The new `bin/observe.mjs` reads stdin, parses the hook payload natively, and writes the rich event schema (`tool_input.command` for Bash, `Edit.file_path` for Edit/Write/Read, `tool_output` for tool_complete) without external dependencies. `hooks/observe.sh` becomes a two-phase shim: prefer the Node observer when present, fall back to the prior bash thin-schema path when not, so operators who do not re-run `npx continuous-improvement install` see no behavior change. The companion `backfill` subcommand walks existing `observations.jsonl` files and tags every row with `schema: "thin" | "rich"` so the analysis pass can cleanly skip thin rows and surface a "X% thin" stat to operators. Idempotent; preserves operator data via `.bak` and `observations.corrupt.jsonl` quarantine. Closes the audit-derived gap where 22,065 observations across 11 projects on a `jq`-less host yielded 0 auto-detected instincts. Live backfill against the maintainer's host: 25,077 rows tagged → 24,547 thin (97.9%), 530 rich (2.1%), across 14 projects.
- **`Proactive Roadmap Surfacing` section in `wild-risa-balance`** (#53) — names the surface-don't-execute boundary explicitly. Trigger conditions (persistent roadmap, finished tasks implying next steps, drift, instinct/memory predictions); hard boundary citing global CLAUDE.md and Auto Mode rules; format with `(surfaced — <source>)` marker; anti-patterns (nagging, citation-free speculation, bundling surface with execution, inventing roadmaps).
- **`meta` instinct pack** (#50) — promotes the two cross-project reflection-instincts (`skip-thin-observation-schema`, `parallelize-independent-tool-calls`) from per-project YAML into a shared starter pack. Test loop drives off `PACK_FLOORS` so language packs keep ≥5 floor while `meta` ships at ≥2.

### Changed
- **README install ergonomics** (#50) — `jq` listed alongside Node and bash in Preconditions with per-OS install commands; new "Operator modes" section adjacent to install with both bash/zsh and PowerShell export syntax for `CLAUDE_THREE_SECTION_CLOSE_DISABLED`.
- **CONTRIBUTING.md `Source of truth: src/` callout** (#50) — hoisted as a one-line warning at the top of `## Architecture`; the existing edit-src-then-build workflow at lines 101-118 was correct but buried.

### Fixed
- **`hooks/observe.sh` jq-missing one-shot warning** (#50) — emits a single stderr line per host on the first invocation when `jq` is absent on PATH, so operators learn the auto-instinct gap at install time instead of discovering weeks of thin-schema collection. Marker lives at `~/.claude/.continuous-improvement-jq-warned`, deliberately outside `~/.claude/instincts/` so directory iterators are unaffected.


