---
title: Setup runner cli
date: 2026-06-15 07:30:43 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.13.1
dependentsNumber: "6"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.13.1**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `runner doctor --json` schema **v3** (now the default for `doctor`):
  the flat detection dump becomes a structured diagnostic inventory —
  `invocation`/`environment`/`runner` provenance, per-`ecosystems`
  decisions with a `confidence` grade derived from the resolution step
  (override/manifest/lockfile → high, PATH probe → medium, legacy npm
  fallback → low, failure → none), task `sources` as first-class objects,
  `fqn`-keyed `tasks` with effective `resolved` commands, PATH-probed
  `tools`, duplicate-task-name `conflicts` (which task wins, which are
  shadowed, and why), flattened `diagnostics`, and a self-describing
  `resolution` policy block. Implements the former `doctor.v3-draft`
  schema; the real output validates against both the committed
  `doctor.v3.schema.json` and the original draft. Draft shapes nothing
  can emit yet (rich dependency edges, workspace identity, probe errors)
  are deferred, not declared. v1/v2 remain available via
  `--schema-version`; human output is unchanged.
- `runner why --json` schema **v3** (now the default for `why`): the
  report is restructured around `{task, match}` candidate pairs plus a
  `decision` block. Each task carries a stable identity
  (`fqn` = `root:<kind>#<name>`, `provider`, `kind` — cargo aliases are
  now labeled `cargo-alias`), its origin (`source` file,
  `source_pointer` key path), and resolution data (`definition`,
  `resolved` command preview, `cwd`, sibling `aliases`,
  `dependencies`). The `match` half exposes the exact run-time selection
  key (`source_priority`, `depth`, `display_order`, alias-last), and
  `decision.strategy` names the branch taken (`single-candidate`,
  `ranked`, `filtered`, `exec-fallback`). Implements the former
  `why.v3-draft` example, which the real output now reproduces verbatim;
  v1/v2 stay available via `--schema-version`. `list` remains at v2 — its
  v3 draft is still under review, and it rejects `--schema-version 3`
  rather than mislabel output. `schema --all` emits the committed
  `schemas/why.v3.schema.json`, and the example validates against it.
- Both v3 schemas use the `<scope>:<kind>#<name>` fqn form, with `#`
  separating the structured prefix from the verbatim task name so a name
  containing `:` (e.g. an npm script `fmt:update`) stays unambiguous.
- Deno tasks now run without the `deno` binary. A `deno.json` /
  `deno.jsonc` task whose command is a leaf shell command executes
  in-process via the embedded `deno_task_shell` (deno's own cross-platform
  task shell) when `deno` isn't on `PATH`; with `deno` installed it still
  shells out to `deno task` for full fidelity. The `unstable-deno-exec`
  feature flips the default to self-exec-first. Tasks that invoke `deno`
  themselves or declare `dependencies` still need the binary. The shell
  engine lives in a reusable `tool::shell` so other shell-string task
  sources can build on it later.
- Deno task descriptions. The object form
  (`"build": { "command": "…", "description": "…" }`) is now parsed and
  the description surfaces in `runner list` / `why` / `doctor`, alongside
  the existing bare-string form.
- `runner list` and the bare `runner` view now print a duplicate-name
  conflict footer. When two sources define the same task name (e.g. a
  `just` `run` recipe and `cargo run`), it names the source that
  `runner run <name>` actually dispatches and the ones it shadows — using
  the same precedence as dispatch — so a silently shadowed task no longer
  goes unnoticed.

### Changed

- Cargo built-in aliases now fold under their canonical subcommand in
  `runner list` and the bare `runner` view. `b`/`c`/`d`/`t`/`r`/`rm` are
  shown as aliases of the promoted `build`/`check`/`doc`/`test`/`run`/
  `remove` tasks (e.g. `test (t)`) instead of standing alone; both the
  canonical name and the short form still dispatch. Aliases that carry
  extra arguments (`bb`, `cl`, `rq`, …) keep their own rows. Promoting
  `run`/`remove` can collide with a same-named `just`/other task — that
  collision now surfaces in the conflict footer above rather than hiding.
- `runner doctor --json` (v3) now probes package-manager and task-runner
  versions via `<tool> --version` (previously only the Node runtime
  carried a version), reports a per-task `self_executable` flag (true for
  deno tasks runner can run through the embedded shell), and derives the
  Deno tool's `required` from it. Node is included in `ecosystems` /
  `tools` whenever a resolver or task signal implies it, not only when a
  Node package manager was lockfile-detected.
- The committed v3 schemas (`doctor.v3.schema.json`,
  `why.v3.schema.json`) set `additionalProperties: false` throughout, so
  validation catches stray or misspelled fields in real output instead of
  silently accepting them.

## What's Changed
* Emit JSON output schemas by @kjanat in https://github.com/kjanat/runner/pull/50
* Forward --help/--version to task in `run` alias by @kjanat in https://github.com/kjanat/runner/pull/54


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.13.0...v0.13.1

