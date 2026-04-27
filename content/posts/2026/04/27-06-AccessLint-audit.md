---
title: AccessLint Audit
date: 2026-04-27 06:37:55 +00:00
tags:
  - AccessLint
  - GitHub Actions
draft: false
repo: https://github.com/AccessLint/audit
marketplace: https://github.com/marketplace/actions/accesslint-audit
version: v0.3.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/AccessLint/audit** to version **v0.3.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accesslint-audit) to find the latest changes.

## Action Summary

The **AccessLint Audit Action** is a GitHub Action that automates WCAG 2.2 accessibility audits for live URLs on every pull request or push. It generates detailed JSON and Markdown reports on accessibility violations, supports comparing against a baseline to identify regressions, and provides configurable thresholds for reporting and build failure. By integrating with React DevTools, it can map issues directly to source code lines in PR diffs, streamlining the identification and resolution of accessibility issues.

## What's Changed

WCAG 2.2 DOM audits that pin every violation to the `.jsx`/`.tsx` line that produced it.

`AccessLint/audit` runs in your CI workflow against any live URL — production, preview, dev server. When that URL is a React dev build, each violation maps back to its exact source file via React DevTools fibers + sourcemaps, so the report says `src/components/Card.tsx:42:7 (Card)` instead of `body > div > … > button.css-1k9j2m`. Inline `::warning file=…,line=…::` annotations land directly on changed lines in the PR diff.

## What you get

- **Source-mapped violations** — In-page probe walks React fibers (or the React 19 `_debugStack` + chunk `.js.map`) so every entry in the report is an opened-able source file. Works with CRA, Next dev, Vite + React. Falls back gracefully on production builds and non-React pages.
- **Inline PR annotations** — `::warning file=…,line=…,col=…,title=<rule>::` on changed lines. Yellow squiggle in the "Files changed" tab, no scrolling to a sticky comment.
- **`fail-on:`** — `never | any | critical | serious | moderate | minor`. One-line gate; no extra `if: outputs.failed == 'true'` step.
- **Multi-URL** — `urls:` (one per line) audits a list of pages and aggregates into one report with per-URL sections.
- **Regression mode** — `compare-against:` audits a baseline + candidate and reports only violations **new** in the candidate. Gate PRs without reckoning with pre-existing site debt.
- **SARIF v2.1.0 output** — pipe to `github/codeql-action/upload-sarif` for GitHub Code Scanning. Violations land in Security → Code scanning **and** as inline review comments on PR diffs.
- **Group-by-file Markdown** — collapsible `<details>` per file; auto-open for files with critical/serious violations.
- **`rules` / `rules-exclude`** — allowlist or denylist by rule ID.

## Quick start

```yaml
- uses: AccessLint/audit@v0
  id: a11y
  with:
    url: ${{ steps.preview.outputs.url }}
    fail-on: critical
```

That's the minimum useful setup. The action exits non-zero on any critical violation; you'll see a sticky comment on the PR with the report and inline annotations on the changed lines (when source mapping is available).

## Composition examples

The action exits 0 by default — every gating, commenting, and notification pattern is a downstream step you compose with whichever actions you already use:

```yaml
# Sticky-comment the report on every PR
- uses: marocchino/sticky-pull-request-comment@v2
  with: { header: a11y, path: accesslint-report.md }

# Upload SARIF for Security tab integration
- uses: github/codeql-action/upload-sarif@v3
  with: { sarif_file: ${{ steps.a11y.outputs.report-sarif-path }} }

# Audit multiple pages of your app in one job
- uses: AccessLint/audit@v0
  with:
    urls: |
      ${{ steps.preview.outputs.url }}/
      ${{ steps.preview.outputs.url }}/dashboard
      ${{ steps.preview.outputs.url }}/settings

# Only fail on regressions vs production
- uses: AccessLint/audit@v0
  with:
    url: ${{ steps.preview.outputs.url }}
    compare-against: https://www.your-app.com
    fail-on: any
```

See the [README](https://github.com/AccessLint/audit#composition-examples) for the full set: artifact upload, custom gating, scheduled-issue creation, browser caching, and more.

## Outputs

| Output | What it is |
| --- | --- |
| `violation-count` | Total violations after the `min-impact` filter |
| `critical-count` / `serious-count` | Per-tier counts |
| `annotated-count` | Violations that landed as inline `::warning::` annotations |
| `failed` | `'true'` when any violation found (independent of `fail-on`) |
| `report-json-path` / `report-markdown-path` / `report-sarif-path` | Absolute paths to the three report formats |

## What's under the hood

Headless Chromium (via Playwright's `chromium-headless-shell` for fast CI installs) loads your URL, the [`@accesslint/core`](https://www.npmjs.com/package/@accesslint/core) IIFE injects, and the audit runs in-page. The fiber probe + sourcemap resolution all happen inside the page where the React dev tree and `.js.map` files are reachable.

## Backed by

- [`@accesslint/core`](https://www.npmjs.com/package/@accesslint/core) — pure WCAG 2.2 rule engine
- [`@accesslint/mcp`](https://www.npmjs.com/package/@accesslint/mcp) — Model Context Protocol server for editor-time audit + auto-fix
- [Claude Code plugin](https://github.com/AccessLint/claude-marketplace) — interactive a11y workflows in Claude Code

