---
title: Remyx Outrider
date: 2026-06-02 06:50:44 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.2.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Outrider is now on the GitHub Marketplace 🎉

[Marketplace listing →](https://github.com/marketplace/actions/remyx-outrider)

One-click install from the listing. `uses:` path is unchanged — existing customers on `@v1` get this release with no workflow edits required.

```yaml
- uses: remyxai/outrider@v1
  with:
    interest-id: ${{ vars.REMYX_INTEREST_ID }}
```

## What's new since v1.1.3

### New inputs

- **`claude-timeout`** (default `900`). Wall-clock budget for the Claude Code implementation pass. Default raised from 600s after large repos hit the ceiling. Bump for very large codebases, lower to cap cost.
- **`pin-arxiv`**. Force-select a specific `arxiv_id` from the candidate pool and skip the LLM selection pass. Use it for reproducible eval re-runs. Empty = normal selection (default).

### Robustness

- **Brand-new interests auto-refresh.** An empty recommendation pool now triggers `POST /papers/recommended/refresh` and polls until picks appear (up to ~150s) instead of failing the run. Day-zero interests work without a manual nudge.
- **`master`-default repos supported.** PR base + the commit-time sanity check now read the repo's actual default branch via `git symbolic-ref` rather than hardcoding `main`.
- **`unvalidated` pytest classification.** A pytest run that can't collect (missing repo deps on the CI runner, exit 5, ImportError during collection) is no longer reported as `failed`. PR body labels it `ℹ️ Tests could not run in CI` and points reviewers at local validation.
- **Issues-disabled repos.** When the target repo has Issues turned off (HTTP 410 on POST `/issues`), the orchestrator enables them via PATCH and retries once.
- **Branch-ref safety in commit cleanup.** Build-artifact prune excludes `.git/` from traversal, eliminating a class of orphan-root-commit failures on branches whose names contain `/`.
- **Shallow-clone-friendly pushes.** Branch push is now delete-then-plain-push instead of `--force`, which was confusing GitHub's PR validator into rejecting `--depth 20` clones as "no history in common with main."
- **LFS smudge skip.** `GIT_LFS_SKIP_SMUDGE=1` on clone, so repos with exhausted LFS bandwidth don't fail at checkout. The orchestrator only reads code structure and writes small text edits; pointer files are sufficient.
- **`--untracked-files=all` in change detection.** Files inside a brand-new directory (first-ever `tests/`, first-ever `docs/`) are now seen per-file instead of collapsed to the directory entry.

### Visibility

- **Non-zero exit on `claude_failed` and `error`.** Workflow step fails visibly instead of going green with no PR or Issue.
- **Enriched selection log.** `$GITHUB_STEP_SUMMARY` lists rejected candidates as clickable arxiv links with reasons. `selection_rejected` in `$GITHUB_OUTPUT` carries `{arxiv_id, title, reason}` triples.
- **Per-run cost accumulation across all Claude passes.** Pre-flight + selection + implementation + self-review token and dollar costs sum into a single line in the step summary and the `cost_usd` / `input_tokens` / `output_tokens` outputs.

### Customer signal

- **Outrider Validate waitlist** linked from the PR body. Eval-on-every-PR (paid tier, coming soon); design-partner pilot open at [discussions/19](https://github.com/remyxai/outrider/discussions/19).

## Backward compatibility

All existing workflows continue to work without changes. The `uses:` path, every existing `with:` input, and every output are unchanged from v1.1.3. The two new inputs (`claude-timeout`, `pin-arxiv`) are optional with safe defaults.

## What is Outrider

A composite GitHub Action that scouts the arXiv frontier for your repo. Outrider opens a draft PR wiring the next paper into an existing call site, or starts a discussion Issue when a PR would be premature. Powered by the Remyx engine + Claude Code.

See the [README](https://github.com/remyxai/outrider#readme) for the 5-minute setup walkthrough.

## Costs

- **Claude Code**: ~$2-3 per PR-track run. You bring your own `ANTHROPIC_API_KEY`.
- **Remyx API**: included in your [remyx.ai](https://engine.remyx.ai/account) account.
- **GitHub Actions**: ~6-8 min on `ubuntu-latest` per run.

At weekly cadence (default `rate-limit-days: 7`), expect ~$2-4/mo Claude.

**Full changelog**: https://github.com/remyxai/outrider/compare/v1.1.3...v1.2.0
