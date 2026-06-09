---
title: semvertag
date: 2026-06-09 14:53:01 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## What's Changed

# semvertag 0.4.0 — composite GitHub Action

**Minor release shipping the `action.yml` composite wrapper that has been on the deferred list since 0.3.0.** Users can now write `uses: modern-python/semvertag@v0` instead of pasting an 11-line install-and-run block. No CLI changes; the action wraps the existing `semvertag tag --json` invocation and surfaces `tag` / `bump` / `status` as step outputs.

If you're already using the documented pure-CLI snippet and don't want to consume third-party actions, you can stay on it — `docs/providers/github.md` preserves it as the "Without the composite action" recipe.

## What landed

- `action.yml` at repo root — composite action: `astral-sh/setup-uv@v7`, then `uvx 'semvertag>=0.3.1,<1' tag --json`, then parses the envelope into `tag` / `bump` / `status` step outputs.
- `.github/workflows/tag-major.yml` — fires on release published (non-prerelease) and force-updates the floating `v0` major tag so consumers can pin `@v0` and ride minor bumps automatically.
- Dogfood workflow migration — `.github/workflows/semvertag.yml` now consumes `uses: ./`, exercising the action against the working tree on every push to main.
- `action-smoke` CI job — runs `uses: ./` on every PR and asserts that `status` and `bump` outputs are non-empty. Real tag creation against the GitHub API is covered by the post-merge dogfood run, not the PR-time job (forks can't have `contents: write`).
- README + `docs/providers/github.md` rewrite — Quick Start leads with the action; Outputs section documents the three step outputs; "Without the composite action" preserves the pure-CLI fallback for constrained environments.

## CLI version floor

`action.yml` pins `'semvertag>=0.3.1,<1'`. 0.3.1 is the minimum CLI version that ships every feature the action depends on (`--json` envelope, `GITHUB_ACTIONS=true` auto-detection, branch-prefix GitHub merge subject recognition). The floor only needs to bump when a future release breaks CLI contract — not on every minor.

## Release procedure (maintainer)

### Step 1: Pre-flight check

Before tagging:

- Search https://github.com/marketplace?type=actions for "semvertag" — the listing name `semvertag` must not be taken by another action.
  - **If it's taken:** edit `action.yml`'s `name:` field to `'semvertag tag'` (Marketplace permits spaces in display names) and re-PR before continuing. The `uses: modern-python/semvertag@v0` syntax depends on the repo slug, not the display name, so consumer-facing docs do not change.
- Confirm `branding.icon` is one of the Feather icon names GitHub accepts and `branding.color` is one of `white | yellow | blue | green | orange | red | purple | gray-dark`. (We ship `icon: tag`, `color: blue` — both valid.)
- Confirm CI is green on main, including the new `action-smoke` job.

### Step 2: Cut the 0.4.0 GitHub release

This project's release tag convention is bare semver (`0.4.0`, no `v` prefix) — the same as 0.3.x and earlier. The `0.4.0` tag is created automatically by the dogfood workflow on PR merge, so it already exists when you reach this step.

Create the GitHub release pointing at the existing tag:

```sh
gh release create 0.4.0 \
  --title '0.4.0 — composite GitHub Action' \
  --notes-file planning/releases/0.4.0.md
```

(Or use the GitHub web UI: Releases → "Draft a new release" → choose existing tag `0.4.0`.)

`publish.yml` fires on release creation and pushes 0.4.0 to PyPI via `just publish` (which uses `uv version $GITHUB_REF_NAME` to inject the bare semver tag name as the package version).

### Step 3: Bootstrap the floating `v0` tag (one-time)

Releases use bare semver tags (`0.4.0`) but the floating action tag is `v`-prefixed (`v0`) so consumers can write the conventional `uses: modern-python/semvertag@v0`. `tag-major.yml` handles the `v`-prefix bump automatically on every release from 0.4.1 forward. For 0.4.0 specifically — the first release after the workflow landed — the floating tag does not yet exist and must be bootstrapped manually:

```sh
git fetch --tags
git tag -fa v0 0.4.0 -m 'Update v0 to 0.4.0'
git push -f origin v0
```

After this, `uses: modern-python/semvertag@v0` resolves successfully for consumers.

### Step 4: Publish to Marketplace (manual UI step)

1. Navigate to https://github.com/modern-python/semvertag/releases/tag/0.4.0.
2. Click **Edit release**.
3. Check **Publish this Action to the GitHub Marketplace**.
4. Accept the Marketplace Terms of Service if prompted (one-time for the repo).
5. Select **Primary Category:** `Continuous integration`.
6. Select **Secondary Category** (optional): `Utilities`.
7. Save the release.

### Step 5: Post-publish smoke test

- Confirm the listing appears at https://github.com/marketplace/actions/semvertag (the slug derives from the `name:` field; if you renamed in Step 1 the slug will differ).
- In a sandbox repo, paste the README snippet (`uses: modern-python/semvertag@v0` after a `actions/checkout@v4` with `fetch-depth: 0`) and confirm the workflow runs end-to-end.

## Breaking changes

None. The action is additive; the pure-CLI recipe still works exactly as before (and remains documented as the fallback).

## See also

- Spec: `planning/specs/2026-06-08-action-yml-composite-wrapper-design.md`
- Implementation plan: `planning/plans/2026-06-08-action-yml-composite-wrapper.md`

