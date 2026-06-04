---
title: Setup runner cli
date: 2026-06-04 15:12:51 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.12.1
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.12.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `pyproject.toml` `[project.scripts]` entry points (PEP 621 console
  scripts) are now extracted as runnable tasks for Python projects. They
  surface under the `pyproject.toml` source in `runner list` (with the
  entry-point target shown as the description) and dispatch via the
  detected Python package manager's `run` subcommand — `uv run <name>`,
  `poetry run <name>`, or `pipenv run <name>`. Previously a uv/poetry
  project's declared scripts were invisible to `runner`, which detected
  the package manager but listed no tasks.
- AUR distribution channel. Two packages on the Arch User Repository:
  `runner-run-bin` (prebuilt binaries for `x86_64`, `aarch64`, `armv7h`)
  and `runner-run` (source build for `x86_64`, `aarch64`). `-bin`
  `provides`/`conflicts` `runner-run`, so install whichever you prefer —
  https://aur.archlinux.org/packages/runner-run-bin and
  https://aur.archlinux.org/packages/runner-run.
- Shell completions shipped by both AUR packages and auto-loaded from
  the canonical system dirs: bash at
  `/usr/share/bash-completion/completions/{runner,run}`, zsh at
  `/usr/share/zsh/site-functions/{_runner,_run}`, fish at
  `/usr/share/fish/vendor_completions.d/{runner,run}.fish`. PowerShell
  on Linux has no autoload convention, so the pwsh script is installed
  at `/usr/share/runner/runner.ps1` for users to dot-source from their
  `$PROFILE`. Completions are clap-dynamic — the shell shells out to
  the binary for candidates, so tab-completing in a project picks up
  the *current* task list from `package.json` / `turbo.json` /
  `Justfile` / etc., not a static snapshot.
- `.github/workflows/aur-release.yml` publishes both packages on every
  `release: published` event (with manual `workflow_dispatch` +
  `dry-run` for validation). Gated behind a dedicated `aur` GitHub
  Environment so the `AUR_SSH_PRIVATE_KEY` secret is only readable from
  that job. Per-pkg `concurrency:` group serializes manual + automatic
  triggers for the same package without blocking the other matrix leg.
- `.github/scripts/publish/aur-prepare.sh` rewrites `pkgver`/`pkgrel`
  in the checked-in PKGBUILDs and, for the `-bin` package, injects
  per-arch `sha256sums_*` read directly from the release's published
  `.sha256` companion assets (avoids the `updpkgsums` host-arch-only
  limitation). Strict semver regex on the version input refuses
  anything containing `&`, `/`, `\`, or newlines before any `sed`
  runs.
- Man pages for `runner`, `run`, and each subcommand. Rendered from the
  clap command tree by a `man` subcommand gated behind the `man`
  feature (off by default — never in the shipped binary, never committed)
  and shipped by every channel: crates.io (in the published crate), npm
  (facade `man` field), both AUR packages (`/usr/share/man/man1/`), and a
  `runner-<tag>-man.tar.gz` GitHub release asset that `install.sh` and
  `runner-run-bin` pull from. `man runner` / `man run` work everywhere.

### Security

- All third-party `uses:` in `crates-release.yml`, `npm-release.yml`,
  and `release.yml` pinned to commit SHAs (with a `# vN` trailing
  comment for readability), so an upstream tag rewrite or
  account-takeover cannot silently swap in a different action build.
- `persist-credentials: false` added to every `actions/checkout` step
  in `release.yml`, so `GITHUB_TOKEN` is not persisted into git config.
- Release verification no longer saves Rust caches from pull request
  runs, preventing untrusted PRs from persisting cache contents.

### Fixed

- `runner list`, `runner run`, and `runner why` now find
  `pyproject.toml` scripts and Python package-manager signals from
  nested directories (bounded by the containing VCS root), so running
  from `src/` inside a uv/poetry/pipenv project still surfaces and
  dispatches `[project.scripts]` tasks.
- `runner why` now reports Python package-manager resolution for
  `pyproject.toml` tasks, including `--pm` and `[pm].python`
  overrides, matching the actual `runner run` dispatch path.
- `runner list --source` invalid-label help now includes
  `pyproject.toml` in the accepted source list.
- Restore the `multiple_crate_versions` Clippy allow so CI accepts the
  current unavoidable duplicate transitive crate versions while keeping
  the broader `clippy::cargo` deny group enabled.
- Hide the feature-only `runner man` generator from shipped `runner.1`
  output, so installed man pages no longer document an unavailable
  subcommand.

## What's Changed
* feat(aur): publish runner-run + runner-run-bin with shell completions by @kjanat in https://github.com/kjanat/runner/pull/35
* docs: document AUR install channel in README, site, and changelog by @kjanat in https://github.com/kjanat/runner/pull/36
* Man pages: render from the CLI, ship on every channel by @kjanat in https://github.com/kjanat/runner/pull/37
* Surface pyproject.toml [project.scripts] as runnable tasks by @kjanat in https://github.com/kjanat/runner/pull/39


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.12.0...v0.12.1

