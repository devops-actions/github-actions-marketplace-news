---
title: AI Issue Triage
date: 2026-05-15 14:58:40 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-issue-triage
marketplace: https://github.com/marketplace/actions/ai-issue-triage
version: v0.2.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-issue-triage** to version **v0.2.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-issue-triage) to find the latest changes.

## Action Summary

The **gha-issue-triage** GitHub Action automates issue triage by leveraging AI to detect duplicates, assess relevance and feasibility, score complexity, and apply appropriate labels such as `bug`, `feature`, or `good-first-issue`. It also posts a sticky summary comment with its analysis, updating the comment on re-runs to avoid clutter. This action streamlines issue management, saving time and ensuring consistent categorization and prioritization of issues.

## What's Changed

**AI Issue Triage** is a composite GitHub Action that, on every `issues: opened | edited | labeled` event, runs a four-stage pipeline:

1. **Duplicate detection** — fuzzy-matches new issues against the repo's open + closed issues (`difflib.SequenceMatcher`)
2. **Relevance scoring** — LLM judges the issue against repo scope (`README.md`, `CLAUDE.md`)
3. **Feasibility + complexity** — `feasibility` (yes/no, scope check) and `complexity` (low/medium/high, effort estimate) as orthogonal fields
4. **Auto-labeling + sticky summary comment** — applies the managed label set (`duplicate`, `bug`, `feature`, `enhancement`, `good-first-issue`, `needs-discussion`, `invalid`) and posts/edits a single bot comment with the analysis

Three LLM backends supported, in precedence order: any **OpenAI-compatible endpoint** (`OPENAI_API_BASE`, e.g. Mistral / Ollama / vLLM), **Anthropic** (`ANTHROPIC_API_KEY`), or **GitHub Models** (default — works with `github.token` when the caller declares `permissions: models: read`).

## Minimal usage

```yaml
name: Issue Triage
on:
  issues:
    types: [opened, edited]
jobs:
  triage:
    runs-on: ubuntu-latest
    permissions:
      issues: write
      contents: read
      models: read
    steps:
      - uses: qte77/gha-issue-triage@v0.2.2
        with:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

See [`README.md`](https://github.com/qte77/gha-issue-triage#readme) for inputs, alternative auth paths, and the sample summary comment.

## What's in v0.2.2

### Fixed

- `action.yaml` `description` trimmed from 141 → 119 chars so the Marketplace publication form accepts the listing (#52)

## What shipped in the prior cycle (was v0.2.1, now folded into v0.2.2)

### Fixed

- Category label (`feature` / `bug` / `enhancement` / `needs-discussion`) is no longer applied when `relevance.irrelevant=true`; only `invalid` (plus feasibility/duplicate labels) is applied (#41)
- `apply_labels` reconciles the managed label set on every triage run: fossil labels within the managed set are removed, additions and removals happen in a single `gh issue edit` call, and a no-op fast-path skips the call when the set is already in sync. Human-applied labels outside the managed set are preserved (#42)

### Changed

- Self-triage workflow uses the default `${{ github.token }}` for GitHub Models calls instead of a custom `GH_MODELS` PAT — `permissions: models: read` is sufficient (#47)

### Added

- `docs/integrations.md` "Auth for `AI_TOKEN`" section: three valid token shapes (`github.token` + `models: read`, scopeless classic PAT, fine-grained PAT with `user_models:read`) plus rate-limit attribution caveats (#47)
- Theme-aware screenshot of triaged issues in the README, collapsed under `<details>` (#46)

Full history: [`CHANGELOG.md`](https://github.com/qte77/gha-issue-triage/blob/v0.2.2/CHANGELOG.md)

