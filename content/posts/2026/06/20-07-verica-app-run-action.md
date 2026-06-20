---
title: Verica Run
date: 2026-06-20 07:08:13 +00:00
tags:
  - verica-app
  - GitHub Actions
draft: false
repo: https://github.com/verica-app/run-action
marketplace: https://github.com/marketplace/actions/verica-run
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/verica-app/run-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verica-run) to find the latest changes.

## What's Changed

Skip re-running unchanged evals, and link the run's SHA to the real commit.

### Highlights

- **Reuse unchanged runs** — opt into `reuse-if-unchanged` and the action returns a recent completed run's verdict instead of re-sampling when nothing about the eval's config changed (prompt + model + sampling + dataset + graders). Saves CI tokens and time on no-op pushes; re-running stays the default.
- **SHA links to the real commit** — on `pull_request`, the action now stamps the **PR head** commit instead of GitHub's ephemeral merge commit, so the SHA shown on the Verica run page links to an actual commit on your branch. The repo URL is auto-detected from the runner env — no config needed.

### New inputs

| Input | Default | What it does |
| --- | --- | --- |
| `reuse-if-unchanged` | `false` | Reuse a recent **completed** run when the config is unchanged. |
| `reuse-max-age` | `24` | Max age in hours of a reusable run (cap 720). |
| `reuse-same-ref` | `false` | Only reuse a run on the same git ref (default: any ref). |

### Also

- The PR comment marks a reused result with ♻️.
- `reuse-if-unchanged` is incompatible with `threshold` / `baseline-ref` — a reused verdict was frozen under the prior gate.

### Usage

```yaml
- uses: verica-app/run-action@v1
  with:
    token: ${{ secrets.VERICA_TOKEN }}
    manifest: .verica.yml
    reuse-if-unchanged: true
```

### Requirements

- Uses `@verica-app/cli` ≥ **0.1.4** (resolved automatically by the default `cli-version: '^0.1'`).
- Reuse also needs reuse support live on your Verica instance.

### Upgrading

Fully backward-compatible — every new input is optional and defaults to off. `@v1` consumers get this automatically; pin `@v1.0.2` to lock it.

**Full Changelog**: https://github.com/verica-app/run-action/compare/v1.0.1...v1.0.2

