---
title: AgentLint
date: 2026-04-26 13:39:36 +00:00
tags:
  - 0xmariowu
  - GitHub Actions
draft: false
repo: https://github.com/0xmariowu/AgentLint
marketplace: https://github.com/marketplace/actions/agentlint
version: v1.1.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/0xmariowu/AgentLint** to version **v1.1.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentlint) to find the latest changes.

## Action Summary

AgentLint is a GitHub Action designed to analyze and score the "harness" of AI agents—comprising configurations, rules, and supporting files that guide large language models (LLMs) in delivering accurate and effective results. It automates the evaluation process with 51 deterministic checks across key dimensions such as safety, workability, and continuity, and provides actionable fixes to optimize agent performance. By identifying and resolving issues in the harness, it helps prevent inefficiencies and AI-related errors, ensuring reliable and refined agent outputs.

## What's Changed

Deferred-P0 follow-up bundle. Closes the 5 P0 blockers from `docs/p0-production-blocker-scan-2026-04-25.md` that Round 1 (v1.1.6 / v1.1.7) deferred, all reproduced against the 1.1.7 tarball.

### You can now…

- **Install `agentlint-ai` on BSD / macOS without GNU coreutils** — the global CLI's symlink resolver no longer relies on `readlink -f`. New portable `_al_resolve_self` walks symlink chains via POSIX `readlink`, resolves relative targets against the symlink's containing directory (not the caller's cwd), and canonicalizes via `cd + pwd -P`. Mirrored inline in `scripts/agentlint.sh` and `src/scanner.sh`; canonical reference in `scripts/lib/resolve-self.sh` with regression test `tests/test-resolve-self.sh`. (P0-5)
- **Run `/al` without short project names absorbing unrelated sessions** — `src/session-analyzer.js` no longer substring-matches encoded session names against project aliases. `matchProjectFromCatalog` now requires either realpath equality on the decoded session path or exact-equality on the sanitized alias (no `.includes()` fallback). Sessions with no project match are dropped by default; the new `--include-unmatched` flag opts back in. Even with `--include-unmatched --include-raw-snippets`, unmatched sessions stay redacted. (P0-8)
- **Trust `agentlint setup` not to silently disable existing hooks** — when a repo already has `core.hooksPath` set (organisation-level hooks) or executable `.git/hooks/pre-commit`, setup now fails closed and tells the user to pass `--force` (or merge their hook chain manually). The check uses `git rev-parse --git-dir` so it covers worktrees and submodules where `.git` is a file. (P0-3-followup)
- **Run `agentlint check` in a TTY without piped input and get Usage instead of a hang** — `src/reporter.js` checks `require('node:tty').isatty(0)` before the blocking `fs.readFileSync(0)` and exits 1 with Usage when no input is piped. (Initially used `process.stdin.isTTY`, but accessing `process.stdin` instantiates Node's Readable wrapper around FD 0 and breaks the pipeline path with EAGAIN; `tty.isatty` is a pure ioctl check with no side effects.) Pipeline use (`scorer | reporter`) is preserved. (P0-7)
- **Trust that v\* tags can only release from `main`** — `release.yml` now (a) refuses to publish unless the tag SHA is an ancestor of `origin/main`, (b) verifies every required CI check from `branch-protection.yml` reported `success` on that SHA before npm publish, and (c) ships under a new repo ruleset `tag-protection-v` (`target=tag`, `enforcement=active`, `refs/tags/v*`, blocks `non_fast_forward` + `deletion`). Apply once via `bash scripts/setup-tag-protection.sh --apply`. (P0-2-tag)

### Internal

- `bump-version.sh:139` no longer drops 24 lines from `docs/content/contributing.md` — the "Branch protection" section is now in both root `CONTRIBUTING.md` and `docs/content/contributing.md`, so the GitBook source-of-truth `cp` is a no-op (release blocker prerequisite for this bump itself).
- Audit doc `docs/p0-production-blocker-scan-2026-04-25.md` published to main with Round 2 verification marks for P0-5 and P0-8 (precise line numbers), a new sub-section P0-2-tag, and a new P0-3-followup section documenting the v1.1.6 regression.

### Tests added (regression pinning)

- `tests/test-resolve-self.sh` — BSD-readlink stub fixture + 5 cases (non-symlink, absolute symlink, relative symlink in npm-bin shape, chained symlink, negative control).
- `tests/test-session-cross-project.js` — end-to-end fixture proving an unmatched session named `-tmp-other-application-app` never leaks into project `app` even with `--include-unmatched --include-raw-snippets` together.
- `tests/test-setup-hook-fail-closed.sh` — 3 fixtures (existing `core.hooksPath`, existing executable `.git/hooks/pre-commit`, `--force` override path).
- `tests/test-reporter-tty-noinput.sh` — node wrapper overrides `process.stdin.isTTY=true`, perl alarm 8s watchdog catches the hang regression.
- `tests/test-release-yaml-gates.sh` — static-shape test asserting tag-protection.yml + release.yml gate ordering.
- Hygiene: `tests/test-registry-consistency.js` updated to grep for the new portable resolver pattern instead of the broken `readlink -f` it was hard-coded to.

