---
title: Remyx Outrider
date: 2026-07-12 19:16:36 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.16
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.16**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## What's new

**`start-from-ref`** — new workflow input that names a branch/tag/SHA on the target fork. When set, the coding session begins with that ref's diff already applied to the workspace, so `lead-content` phrasing like "add tests for X" or "refactor Y" acts on real state instead of being advisory.

Unlocks the **two-pass workflow** — a cheap GLM branch-mode scout produces a reference branch, then an Anthropic-tier follow-up refines it into a shippable PR without rewriting the paper from scratch. See the README's *Examples* section for [OLMo-core #13](https://github.com/smellslikeml/OLMo-core/pull/13) as a landed reference case.

### Usage

Add `start-from-ref` to your fork's `outrider.yml` under `workflow_dispatch:` and thread it to the action:

```yaml
- uses: remyxai/outrider@v1
  with:
    ...
    start-from-ref: ${{ inputs.start-from-ref }}
```

Then dispatch:

```bash
gh workflow run outrider.yml --repo <fork> --ref main \
    -f provider=anthropic -f pin-arxiv=<same-arxiv> \
    -f start-from-ref=<prior-branch>
```

Pushes to `<paper-slug>-refined`, PR opens with `base=<default-branch>` showing the full baseline+refinement state.

### Fixes

- `detect_default_branch` now resolves via `refs/remotes/origin/HEAD` (the remote's default, stable across local checkouts) rather than the local `HEAD` symbolic ref. Without this fix, `start-from-ref` runs would open PRs with `base=<ref>` instead of `base=main`, hiding the baseline diff.

### Tests

877 tests pass. New coverage in `tests/test_start_from_ref.py` covers the branch-name suffix behavior, the checkout-post-clone plumbing, the default-branch resolution, and the classic no-ref-set flow.
