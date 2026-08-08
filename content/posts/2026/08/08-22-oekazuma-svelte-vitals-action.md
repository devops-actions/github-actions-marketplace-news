---
title: svelte-vitals
date: 2026-08-08 22:12:00 +00:00
tags:
  - oekazuma
  - GitHub Actions
draft: false
repo: https://github.com/oekazuma/svelte-vitals-action
marketplace: https://github.com/marketplace/actions/svelte-vitals
version: v0.8.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  `svelte-vitals-action` is a GitHub Action that automates SvelteKit code-health checks using `svelte-vitals`, providing inline annotations on pull requests, a job summary, and a sticky PR comment. It solves problems by automatically running static SEO, Performance, Correctness, Security, and Architecture checks and reporting findings in real-time via GitHub Actions.
---


Version updated for **https://github.com/oekazuma/svelte-vitals-action** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-vitals) to find the latest changes.

## Action Summary

`svelte-vitals-action` is a GitHub Action that automates SvelteKit code-health checks using `svelte-vitals`, providing inline annotations on pull requests, a job summary, and a sticky PR comment. It solves problems by automatically running static SEO, Performance, Correctness, Security, and Architecture checks and reporting findings in real-time via GitHub Actions.

## What's Changed


### Minor Changes

- 376842d: Update the bundled analyzer to `svelte-vitals` 0.44.0 / `@svelte-vitals/core` 0.38.0. The action's inputs and outputs are unchanged, and the step still fails on `failOn` severity rather than on any score. What changes is the numbers the report prints and what the scan finds:

  - **Category scores rise wherever a category checks few things.** Within one `(category, scope)` pair a `warning` now costs five times an `info` and a `critical` fifteen times, so a more severe finding always costs more there. Across pairs it does not: a key is never scored against less than 25 points of checks, so in a one-rule pair the three severities give 96, 80 and 40, where a lone `warning` used to score 0. Anything reading the Health number out of the job summary should be recalibrated — this moves in the opposite direction from the previous release.
  - **New findings in TypeScript-heavy projects.** Rune declarations behind a TS cast (`let count = $state(0) as number`) now feed the same facts as the uncast form, and imports inside `.svelte.ts` / `.svelte.js` runes modules are now collected — so `performance/heavy-import`, `performance/namespace-import`, `architecture/private-scope-import` and `architecture/route-component-import` see code they used to skip. These were silent false negatives, not new checks.
  - **The `diff` input no longer drops findings in non-ASCII paths.** Git octal-escapes such paths under its default `core.quotePath`, which never matched the raw UTF-8 location, so findings under e.g. a Japanese route directory vanished from a diff-scoped run. Changed-file detection now reads NUL-separated output.
  - New opt-in rule `architecture/reserved-name-placement` says which positions a reserved directory name may appear in, the inverse of `architecture/reserved-directory-names`. Off until its placement maps are configured, so it adds nothing to a scan until then.

- 613dbf8: Update the bundled analyzer to `svelte-vitals` 0.44.1 / `@svelte-vitals/core` 0.39.0. The action's inputs and outputs are unchanged, and the step still fails on `failOn` severity rather than on any score. What changes is what a scoped run reports and the scores beside it:

  - **A `diff`-scoped run's Health drops, and the old number was wrong.** Every rule's passing results now carry the same `location` a penalized result would, so changed-file filtering had to stop keeping a result merely because its `location` was in the changed set. Before this, a single incidental passing SEO check on a changed file could promote its whole category from absent to a fabricated 100 and pull Health upward. On the reference shape — one critical `correctness` finding plus one such SEO pass, both on changed files — Health moves from 89 to 79, and 79 is the correct number. If you read the Health value out of the job summary on `diff`-scoped runs, expect it lower and recalibrate against it. One pass of the same shape is deliberately kept: `architecture/unit-entry-file`'s route-less seed still survives `diff` scoping, so `architecture` keeps its own upward pull — that tradeoff predates this release and is unchanged by it.
  - **The `baseline` input no longer masks a genuine regression.** For `seo/title-presence` and the ten `headTagRule`-backed ids (`canonical-url`, `og-title`, `og-image`, `charset`, `viewport`, `twitter-card`, `description-presence`, `og-description`, `json-ld`, `og-url`), a route that passed at the baseline ref and then regressed — a deleted `<title>`, say — produced identical comparison keys on both sides and was dropped as "not new". Comparison is now penalized-findings-only, so those regressions are reported. Passing results no longer appear in baseline-scoped output at all.
  - **A `files:`-scoped `severity: 'off'` override now removes a rule's passing seed**, not just its penalized findings, which it always claimed to do. Scores move where such an override is configured — the upstream reproduction goes 98 → 96 once the stale seed is gone.
  - **A scoped run no longer warns that suppressions are stale just because the scope hid their findings.** With `svelte-vitals-suppressions.json` present, using the `diff` and `baseline` inputs together printed a misleading "N stale entries — re-run `--update-suppressions` to prune" annotation on every run. Staleness is now judged against the project-wide result set, so that annotation stops.
  - `architecture/prop-count`, on by default, now counts named props destructured alongside a rest element (`let { a, b, ...rest } = $props()`) instead of staying silent on the whole destructure. It can only surface findings on components that were previously invisible to it; the `max` default stays 6.
  - `architecture/reserved-directory-names` gains `anyCaseUnitScopes`, governing units whose name does not begin A–Z — the lowercase and `.ts`-entry units `unitScopes` could never reach. Defaults to `{}`, so a project that does not declare it sees no new findings.
