---
title: semvertag
date: 2026-06-09 22:59:49 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## What's Changed

# semvertag 0.6.0 — `dry-run` on the composite action

**Minor release exposing `--dry-run` through `modern-python/semvertag@v0` and removing the action-smoke side-effect smell.** Pure action + CI change — the CLI is unchanged from 0.5.0 (no Python source touched). Consumers who don't need the new input can keep using `@v0` exactly as before; the input is opt-in.

If you don't use the composite action and only consume `semvertag` directly via `uvx`, you can skip this release — there's no CLI change.

## What landed

- **`dry-run` input on `action.yml`** (default `'false'`). When `true`, the composite passes `--dry-run` to `semvertag tag`; semvertag short-circuits before `provider.create_tag` and the existing case block normalizes `status="dry_run"` to the public `status="no-bump"`. The action's `bump` / `tag` outputs reflect what *would* have happened. ([PR #16](https://github.com/modern-python/semvertag/pull/16))
- **`action-smoke` (this repo's CI) becomes structurally side-effect-free.** Two layers of protection:
  - Layer 1: `with: { dry-run: 'true' }` on `uses: ./` — semvertag never attempts a push.
  - Layer 2: `permissions: contents: write` removed — even a future regression that bypassed dry-run would 403 on the API.
- **Assertion reduced** from two lines (`status == no-bump` AND `bump == none`) to one (`status == no-bump`). Under dry-run, `bump` is unstable (reflects the would-be value) — the old check would fail on any PR where main HEAD was an untagged `feat/`/`bugfix/` merge. Status normalization is the real wiring contract; the single check catches a regression loudly (a unwired dry-run would surface as `created`).
- **CLI version floor in `action.yml` bumps** from `>=0.3.1,<1` to `>=0.5.0,<1` (the release that ships `--dry-run`).
- **`docs/providers/github.md` gets a `## Preview the next bump` section** with both the action-input example and the equivalent local `uvx` invocation.

## Usage

```yaml
- id: semvertag
  uses: modern-python/semvertag@v0
  with:
    dry-run: true
- if: steps.semvertag.outputs.bump != 'none'
  run: echo "Next release would be ${{ steps.semvertag.outputs.tag }} (${{ steps.semvertag.outputs.bump }} bump)"
```

Under `dry-run: true`, the action's `status` output is `no-bump` (no real tag was pushed). The `bump` and `tag` outputs reflect what *would* have happened, so a downstream conditional like the one above can branch on the planned bump.

## Why

PR #14 (in 0.5.0) surfaced the smell: `action-smoke` ran semvertag against the real `main` with `contents: write`, and when main HEAD wasn't already tagged, the smoke test pushed a real release tag from a PR's CI run. 0.5.0 shipped the CLI half (`--dry-run`); 0.6.0 wires it through the composite and switches the smoke job to use it. After this release:

- `action-smoke` is provably side-effect-free regardless of main HEAD's tag state.
- The brittle "main HEAD is always already-tagged" assumption is gone — the test asserts the dry-run wiring, not an external invariant.
- Any consumer who wants to preview the next bump from a workflow can opt in via the same input.

## Breaking changes

None. `dry-run` defaults to `'false'`; existing `uses: modern-python/semvertag@v0` invocations behave identically to 0.5.x.

The version floor bump (`>=0.3.1,<1` → `>=0.5.0,<1`) is internal to the action — consumers who pin `@v0` don't see it directly. If anyone was somehow consuming `action.yml` outside the `@v0` pin and pinning an old `semvertag` themselves, they'd need to upgrade to 0.5.0+. No known consumer pattern matches this.

## Release procedure

`tag-major.yml` automatically updates the floating `v0` tag on release-published, so the steps from 0.4.0's manual bootstrap are no longer needed.

```sh
gh release create 0.6.0 \
  --title '0.6.0 — dry-run on the composite action' \
  --notes-file planning/releases/0.6.0.md
```

`publish.yml` fires on release creation and pushes 0.6.0 to PyPI. `tag-major.yml` fires in parallel and force-updates `v0` to point at the 0.6.0 commit.

## See also

- Spec: `planning/specs/2026-06-09-action-yml-dry-run-design.md`
- Implementation plan: `planning/plans/2026-06-09-action-yml-dry-run.md`
- PR: [#16](https://github.com/modern-python/semvertag/pull/16)
- Predecessor (CLI half): [PR #15](https://github.com/modern-python/semvertag/pull/15) — semvertag 0.5.0
- Original smell surfacing: [PR #14](https://github.com/modern-python/semvertag/pull/14) — mkdocs deploy + the action-smoke side-effect discovery

