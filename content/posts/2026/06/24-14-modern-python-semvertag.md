---
title: semvertag
date: 2026-06-24 14:45:09 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.8.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## What's Changed

# semvertag 0.8.0 — default-branch override honored; closed-outcome internals

**Minor release. One real bugfix and one visible-but-narrow output change, on top of two internal refactors.** The advertised `--default-branch` / `SEMVERTAG_DEFAULT_BRANCH` override now actually takes effect (it was silently ignored before). The human-readable "no tag created" line is reworded; the JSON envelope and the GitHub Action outputs are byte-for-byte unchanged. If you consume `semvertag` via `--json` or the `@v0` action, nothing about your integration changes.

If you never set `--default-branch` and never parse the *human* stdout, this is a transparent upgrade.

## What landed

- **`--default-branch` / `SEMVERTAG_DEFAULT_BRANCH` is now honored** (`semvertag/providers/*`, `semvertag/ioc.py`). The value was parsed, validated, and stored — then read by nobody; both providers always resolved the branch from the forge API. Now each provider short-circuits `get_default_branch()` to the override when set, which also skips one API round-trip. A blank value (empty or whitespace, e.g. a declared-but-empty CI variable) normalizes to "unset" and falls back to the API rather than erroring. ([PR #33](https://github.com/modern-python/semvertag/pull/33))
- **Closed `Outcome` type for run results** (`semvertag/_outcome.py`, `semvertag/_output.py`, `semvertag/_use_case.py`). The free-form run-status strings became a closed sum the renderers dispatch over exhaustively (`assert_never`), so a new outcome is a type error in every renderer instead of a silent fallthrough. The JSON envelope (`schema_version` `1.0`, field order, status tokens) is preserved exactly; the **human-readable** no-bump line is reworded (see Breaking changes). ([PR #34](https://github.com/modern-python/semvertag/pull/34))
- **Tag-pagination loop extracted to one shared helper** (`semvertag/providers/_rest.py`). Both providers' RFC 8288 Link-header walk now delegates to `collect_link_pages`; identical requests and results, no behavior change. ([PR #32](https://github.com/modern-python/semvertag/pull/32))

## Usage

Pin the default branch explicitly (skips the default-branch API lookup):

```sh
semvertag tag --default-branch main
# or
export SEMVERTAG_DEFAULT_BRANCH=main
semvertag tag
```

Leave it unset to keep the prior behavior — the branch is resolved from the forge API.

## Why

`--default-branch` was documented and wired through `Settings`, but no code path consumed it: every run queried the forge for the default branch regardless, so the override was a no-op. This release connects it to a real seam in each provider. The `Outcome` refactor removes the last place "what happened" was a stringly-typed value decoded by equality in three separate spots (`_format_result`, and `jq` in `action.yml`).

## Breaking changes

**JSON / Action consumers: none.** The `--json` envelope and the `action.yml` outputs (`tag` / `bump` / `status`) are byte-for-byte unchanged.

**Human (non-JSON) output: one wording change.** The "no tag created" line no longer echoes the raw machine status token; it reads as a reason sentence instead — e.g. `No tag created — latest commit on default branch is not a merge commit.` rather than `No tag created (status: no_merge_commit, …)`. If you scrape the *human* stdout for status, switch to `--json` (the stable contract). Exit codes are unchanged.

## Release procedure

`tag-major.yml` automatically updates the floating `v0` tag on release-published.

```sh
gh release create 0.8.0 \
  --title '0.8.0 — default-branch override honored; closed-outcome internals' \
  --notes-file planning/releases/0.8.0.md
```

`publish.yml` fires on release creation and pushes 0.8.0 to PyPI (`just publish` runs `uv version 0.8.0`, builds, and uploads). `tag-major.yml` fires in parallel and force-updates `v0` to point at the 0.8.0 commit.

## See also

- Specs/plans: `planning/changes/2026-06-24.01-default-branch-override/`, `planning/changes/2026-06-24.02-closed-outcome-type/`
- Decisions: `planning/decisions/2026-06-23-forge-providers-not-unified.md`, `2026-06-24-blank-settings-values-normalize-to-unset.md`, `2026-06-24-error-translators-not-tabled.md`
- PRs: [#32](https://github.com/modern-python/semvertag/pull/32), [#33](https://github.com/modern-python/semvertag/pull/33), [#34](https://github.com/modern-python/semvertag/pull/34)
- Predecessor: [semvertag 0.7.1](0.7.1.md) — bound provider error-body reads

