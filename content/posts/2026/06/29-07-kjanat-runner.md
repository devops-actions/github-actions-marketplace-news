---
title: Setup runner cli
date: 2026-06-29 07:14:44 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.15.0
dependentsNumber: "10"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.15.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `runner install` gained a two-way install-time lifecycle-script control —
  lifecycle/build scripts are the primary supply-chain attack surface during
  dependency installs, and several package managers (npm, pnpm, …) are moving to
  scripts-off-by-default in upcoming majors, so projects need to deny *and*
  force-on.
  - `--no-scripts` skips them, mapping to each manager's native skip mechanism:
    `--ignore-scripts` for npm/yarn-classic/pnpm/bun, `--no-scripts` for
    composer, `YARN_ENABLE_SCRIPTS=false` for yarn-berry (which dropped the
    flag); deno already denies by default. Managers with no skip mechanism
    (cargo, go, bundler, uv/poetry/pipenv) print a `warn:` and proceed.
  - `--scripts` forces them on where a manager can express it:
    `--no-ignore-scripts` for npm, `YARN_ENABLE_SCRIPTS=true` for yarn-berry,
    and a bare `--allow-scripts` (allow all) for deno. Managers that already run
    scripts by default (composer, cargo, go, bundler, uv/poetry/pipenv,
    yarn-classic) are satisfied without a flag. bun and pnpm (>=10) can't be
    forced on by a flag — their dependency build scripts are gated by a manifest
    allowlist (`trustedDependencies` / `onlyBuiltDependencies`) that runner won't
    write — so they `warn:` instead of silently no-op'ing.
  - The two flags are mutually exclusive. Both the dropped-deny and the
    unforceable notices fire whenever their policy is active and are *not*
    silenced by `--no-warnings` / `RUNNER_NO_WARNINGS` (unlike the cosmetic
    collision/version warnings), because each is the only signal the request
    couldn't be honored.
  - Configurable via `[install].scripts = "deny" | "allow"` in runner.toml and
    `RUNNER_INSTALL_SCRIPTS=deny|allow`, with the usual precedence: CLI flag over
    `RUNNER_INSTALL_SCRIPTS` over `[install].scripts`.
- `run <path>` / `runner run <path>` now executes a local file directly
  instead of handing it to a package manager's package-exec primitive
  (`bunx`/`npx`/`pnpm dlx`/`deno x`/`uvx`), which used to resolve the local
  path as a remote package and fail with a registry 404 or a `git clone`
  error. A token with an explicit local prefix (`./`, `../`, `/`, `~`, or a
  Windows drive root), a bare filename, and a prefix-less relative path
  (`bin/tool`) are each run as the file when they match no task: a recognized
  source file runs via the detected runtime
  (`.ts`/`.mts`/`.cts`/`.js`/`.mjs`/`.cjs` via bun, `deno run`, or node, while
  `.jsx`/`.tsx` run only via bun or deno — Node has no JSX transform, so a
  node-only project reports a clear `node cannot run` error instead of
  building an unrunnable `node app.tsx`; `.py` via `uv run` or python; `.go`
  via `go run`), a `#!` shebang (including the `#!/usr/bin/env -S <interp>
  <args>` form, whose quoted arguments are kept intact) is parsed and invoked,
  and a native binary or self-executable
  script is spawned directly — including an execute-only binary (Unix mode
  0111), whose unreadable shebang probe is treated as "no shebang" so the
  binary still spawns directly rather than hard-failing the run. A source file
  carrying the exec bit but no shebang still runs via its runtime — a raw
  `execve` on shebang-less text fails `ENOEXEC` — so `chmod +x deploy.ts;
  run ./deploy.ts` dispatches `bun deploy.ts` rather than erroring (this also
  fixes whole-tree breakage on vfat/exfat/ntfs-3g mounts that report mode
  0777 for every file). Only an explicit-prefix path outranks a same-named
  task; a prefix-less `bin/tool` lets a matching `make bin/tool` target win
  first and runs as a file only after task lookup misses. A missing explicit
  path reports a clear error rather than a 404. Path lookup is anchored on the
  resolved project directory (the `--dir`/`RUNNER_DIR` target, else the cwd) —
  the same directory task detection scans and the spawned child runs in — so a
  relative or bare token under `--dir` resolves there instead of silently
  missing and mis-routing back into the package-exec 404 path.
- Chain mode now reports per-task wall-clock duration on completion. Sequential
  and live (`-p`) parallel runs print a concise `· <task> finished in 1.2s
  (exit 0)` line to stderr after each task; grouped parallel output folds the
  same summary into each task's block footer (inside the GitHub Actions
  `::group::` so it stays attached). Durations format compactly (`342ms`,
  `1.2s`, `1m 04s`); the band is chosen from the rounded value, so a duration
  that rounds up to a full minute (e.g. `59.95s`) prints `1m 00s`, never an
  out-of-band `60.0s`. Minute-band seconds round half-up to the nearest whole
  second too, so `119.94s` prints `2m 00s` rather than a floored `1m 59s`. The
  synthetic install head of an `install` chain is
  timed the same way in both `-s` and `-p` modes. Timing is diagnostic
  meta-output, so `--quiet` (`RUNNER_QUIET`) and `--no-warnings`
  (`RUNNER_NO_WARNINGS`) suppress it.
- `runner install -p <TASK> <TASK>` runs the post-install tasks in parallel
  (`-s` stays the default sequential). Install always runs first as the
  prerequisite — never as a parallel sibling — then the tasks fan out. A
  failed install still aborts the tasks unless `-k`; `-K` (kill siblings) now
  bites for the parallel post-install phase.

### Fixed

- Forcing a package manager with `--pm` / `RUNNER_PM` now biases same-name task
  selection toward that PM's own task source. Previously a name defined in both
  `package.json` and `deno.json` (e.g. `check`) always resolved to the
  `package.json` script per the default tier and was then run *through* the
  forced PM (`RUNNER_PM=deno run check` → `deno task check`), which breaks when
  the script relies on npm lifecycle build artifacts deno cannot honor. Now the
  forced PM's own source wins the conflict, most-native first: `RUNNER_PM=deno`
  picks `deno:check`, `--pm bun` picks `package.json:check`. The rule is general
  across every PM — deno is one member, not a special case — and a PM that owns
  no task source (Bundler, Composer) re-orders nothing. Only conflicting
  same-name candidates are re-ordered; runs with no `--pm`/`RUNNER_PM` are
  unchanged. See https://github.com/kjanat/runner/issues/70.
- GitHub Actions log groups no longer nest when one `runner`/`run` invokes
  another (e.g. `runner` → an `npm`/`postinstall` script → `run -p A B C`). A
  parent that opens a group marks its descendants (`RUNNER_GROUP_ACTIVE`), so
  a nested runner detects the open group and stays silent instead of emitting
  a second `::group::` that would close the parent's fold early. Inherited
  through intermediate processes, so the whole chain collapses to one group.
- Under GitHub Actions, a child command that emits its own `::group::` /
  `::endgroup::` workflow commands (e.g. some test runners) no longer corrupts
  runner's grouped (`-p`) output: during grouped replay the group title is
  surfaced as plain text and the stray `::endgroup::` is dropped, while
  `::warning::`/`::error::`/`::notice::` annotations pass through untouched.
- A leading `~`/`~/` in `--dir` (or `RUNNER_DIR`) is now expanded to the
  user's home directory before the project directory is resolved. Shells
  only expand an unquoted tilde at the start of a word, so `--dir=~/foo`
  reached `runner` verbatim and was treated as relative — joined onto the
  cwd to produce a bogus `<cwd>/~/foo` that never exists. Unsupported forms
  such as `~user` are left untouched, and the path passes through unchanged
  when no home directory is set.

## What's Changed
* fix: expand leading `~` in `--dir` / `RUNNER_DIR` paths by @kjanat in https://github.com/kjanat/runner/pull/66
* fix(completions): align bare task label with dispatch priority by @kjanat in https://github.com/kjanat/runner/pull/67
* feat: parallel install chaining + GitHub Actions group-nesting fixes by @kjanat in https://github.com/kjanat/runner/pull/65
* feat(chain): per-task wall-clock timing in chain mode by @kjanat in https://github.com/kjanat/runner/pull/73
* fix(resolve): forced PM biases task selection by @kjanat in https://github.com/kjanat/runner/pull/71
* fix(run): execute local files instead of mis-routing to package-exec by @kjanat in https://github.com/kjanat/runner/pull/75
* feat(install): add `--no-scripts` install-script control by @kjanat in https://github.com/kjanat/runner/pull/74


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.14.3...v0.15.0

