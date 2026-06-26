---
title: Argus PR Validator
date: 2026-06-26 14:57:13 +00:00
tags:
  - ironclawdevs27
  - GitHub Actions
draft: false
repo: https://github.com/ironclawdevs27/Argus
marketplace: https://github.com/marketplace/actions/argus-pr-validator
version: v9.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ironclawdevs27/Argus** to version **v9.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-validator) to find the latest changes.

## What's Changed

## Argus PR Validator v9.8.0

Argus turns a pull request into a targeted QA gate: it maps the PR diff to the routes it actually affects, audits only those routes in real Chrome (via the Chrome DevTools Protocol), and blocks the merge **only on regressions the PR introduces** — then reports the result right on the PR.

### Highlights
- **Baseline-aware blocking** — gates on the findings a PR *introduces* vs a stored per-branch baseline, so a pre-existing issue no longer blocks every PR that touches its route. Fail-safe: with no baseline it blocks on absolute counts and says so.
- **Reports on the PR** — one idempotent, marker-tagged comment (NEW / PERSISTING / RESOLVED counts) + a GitHub Check Run whose conclusion maps to the block decision + inline `file:line` annotations anchored at real diff lines (never fabricated).
- **Framework-aware route mapping** *(opt-in via `ARGUS_SOURCE_DIR`)* — a static import graph maps a changed component or stylesheet to only the routes whose pages import it (Next.js + monorepo-aware); conservative fallback on any ambiguity, so a regression is never mapped away.
- **Deploy-preview auto-detection** — audit the PR's live preview (explicit `preview-url`, or opt-in detection from GitHub Deployments), degrading to your configured target.
- **Robust by construction** — bounded-concurrency route auditing (order-preserving results), per-route timeout/retry (a hung audit blocks, never false-passes), and one resilient GitHub client that retries rate-limit/5xx and never leaks the token.
- **Refreshed HTML report** — the self-contained dashboard now matches the Argus brand.

### New action inputs
- `preview-url` — explicit per-PR deploy-preview URL to audit instead of `target-url`.
- `detect-preview` — auto-detect the PR's GitHub-Deployment preview by head SHA.
- `route-timeout` / `route-retries` — per-route audit timeout (ms) and retry count.

### Quality
- Correctness harness: **961/961** hard assertions (166 blocks), verified live in headless Chrome.
- **366** Chrome-free unit tests.
- Ships `argusqa-os@9.8.0` (npm) and `io.github.ironclawdevs27/argus` v9.8.0 (MCP registry).

### Usage
```yaml
name: Argus PR Validator
on: pull_request
permissions:
  contents: read
  pull-requests: write   # post the PR comment
  checks: write          # create the Check Run
jobs:
  qa:
    runs-on: ubuntu-latest
    steps:
      # Start or deploy your app so it's reachable from the runner, then:
      - uses: ironclawdevs27/Argus@v9.8.0
        with:
          target-url: https://your-preview.example.com
          block-on: critical               # none | warning | critical
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

**Requires** Chrome on the runner — the Action installs `chrome-devtools-mcp` and launches Chrome for you.

**Full changelog:** https://github.com/ironclawdevs27/Argus/compare/v9.6.6...v9.8.0

---
