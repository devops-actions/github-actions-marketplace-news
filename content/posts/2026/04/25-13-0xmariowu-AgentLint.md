---
title: AgentLint
date: 2026-04-25 13:24:25 +00:00
tags:
  - 0xmariowu
  - GitHub Actions
draft: false
repo: https://github.com/0xmariowu/AgentLint
marketplace: https://github.com/marketplace/actions/agentlint
version: v1.1.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/0xmariowu/AgentLint** to version **v1.1.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentlint) to find the latest changes.

## Action Summary

AgentLint is a GitHub Action designed to evaluate and improve the "harness" components (e.g., configuration files, instructions, and CI setups) that support AI coding agents like Claude, Codex, and Cursor. By performing 51 deterministic checks across six core dimensions and offering optional AI-powered extended checks, it identifies and remediates errors or inefficiencies in the harness, ensuring agents deliver consistent, high-quality results. This action automates the process of scoring, diagnosing, and fixing harness issues, helping teams optimize their AI-assisted development workflows.

## What's Changed

Hardening release — 24 fixes from a second deep audit. Closes the
production-readiness gaps left after v1.1.4: write transactionality,
release idempotency, scorer fail-loud on partial corruption, doctor
binary smoke-tests, doc copy-pasteability.

### You can now…

- **Trust `setup` is transactional** — if any write in the install fails
  partway, prior writes roll back. No half-installed state. (#188 P0-4)
- **Trust `fixer` is transactional across multiple items** — same
  rollback semantics. (#188 P1-4)
- **Trust `agentlint doctor`** to detect a binary that's on PATH but
  broken (corrupted install, wrong arch, missing shared lib). Was:
  trusted PATH presence. Now: requires version command exit 0 + output.
  (#191 P0-5)
- **Re-push a release tag idempotently** — if the npm version is
  already published or the GH release exists, the workflow prints a
  clear notice and either skips or edits, instead of crashing. (#189
  P1-5)
- **Run setup from a subdir** and have it install at the git
  top-level (was: arbitrary subdir). Override via `--project-dir`. (#188 P2-7)
- **Copy-paste the docs GitHub Action quickstart** verbatim and have
  it produce a passing CI on a fresh repo. (#190 P0-6)
- **Verify branch protection matches the declared YAML** via
  `scripts/setup-branch-protection.sh --verify`. (#190 P1-7)
- **Uninstall agentlint cleanly** following INSTALL.md's Uninstall
  section (npm + Claude plugin + command file + run data + setup
  files). (#190 P2-8)

### Fixed — scanner / scorer / session (batch A, #187)

- **P0-1** ShellCheck SC2327/SC2328 in `scanner.sh` malformed-settings
  helper (regression from v1.1.4 batch1 P0-5).
- **P0-2** `scorer.js` exits 1 on partial malformed JSONL with
  `malformed JSONL at line(s): N` stderr. Was: silent pass + corrupt
  output for any line after the first malformed one.
- **P0-3** Session unmatched sessions stay `project: null` +
  `project_path: null` instead of borrowing identity from a matched
  catalog entry.
- **P0-5** (scanner side) Git smoke check before git-dependent ops.
- **P1-1** Reject empty `--projects-root=` value (was: silent fallback
  to `$HOME/Projects`).
- **P2-4** W8 uses `jq` instead of `python3` for `package.json`
  parsing. Reduces optional dependency.
- **P2-5** NUL-safe project discovery for paths with newlines or
  special chars.

### Fixed — setup / fixer (batch B, #188)

- **P0-4** Transactional setup writes — manifest collected first,
  atomic apply, rollback on any mid-stream failure.
- **P1-4** Fixer per-run transaction tracking + rollback if any
  selected item fails.
- **P2-1** Portable path canonicalisation (`pwd -P` + `dirname`/
  `basename` instead of `readlink -f` which is BSD/macOS-fragile).
- **P2-7** Setup defaults to `git rev-parse --show-toplevel` when
  invoked from a subdir; `--project-dir` for explicit override.

### Fixed — reporter / action / release (batch C, #189)

- **P1-2** SARIF URI uses the actual scanned entry file (`CLAUDE.md`
  vs `AGENTS.md`) per-repo.
- **P1-5** `release.yml` idempotent on retag — skip immutable npm
  versions with clear notice, edit existing GH release instead of
  crashing.
- **P1-6** SARIF upload no longer soft-fails (`continue-on-error`
  removed).
- **P2-2** Action annotations no longer wrapped in `|| true`.
- **P2-3** Reporter filename adds 8-char random suffix to HHMMSS so
  sub-second concurrent runs don't collide.

### Fixed — docs / al / install (batch D, #190)

- **P0-6** `docs/content/intro.md` GitHub Action quickstart is now a
  complete, copy-paste-runnable workflow.
- **P1-3** `/al` reads its persisted config (PROJECTS_ROOT, Deep,
  Session) instead of writing then ignoring it.
- **P1-7** `setup-branch-protection.sh` adds `--verify` mode comparing
  live protection to `.github/branch-protection.yml`.
- **P1-8** `install.sh` `/al` copy success printed only after `mkdir +
  cp` succeed.
- **P1-9** README / INSTALL / docs language tightened — npx clearly
  labelled as non-persistent throughout.
- **P2-6** `commands/al.md` shell quoting gaps (paths with spaces).
- **P2-8** INSTALL.md gains a complete Uninstall section.

### Fixed — doctor (#191)

- **P0-5 (doctor side)** `agentlint doctor` requires the version
  command to exit 0 AND emit non-empty output before declaring a
  binary OK. Broken-binary case prints `✗` with reinstall hint.

### Production effect

Cumulative gates closed since v1.1.0:
- v1.1.1 — multi-project basename collision
- v1.1.2 — accuracy fail-closed
- v1.1.4 — symlink escape, /al wrong root, transactional release
- **v1.1.5** — transactional setup/fixer, doctor smoke-test, release
  idempotency, scorer partial-corruption, /al config persistence

