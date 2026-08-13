---
title: svelte-vitals
date: 2026-08-13 14:13:40 +00:00
tags:
  - oekazuma
  - GitHub Actions
draft: false
repo: https://github.com/oekazuma/svelte-vitals-action
marketplace: https://github.com/marketplace/actions/svelte-vitals
version: v0.9.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The svelte-vitals-action is a GitHub Action that automates static SvelteKit code health checks on pull requests. It provides inline annotations, a job summary, and a single sticky PR comment that updates in place on each push. The action uses the `svelte-vitals` CLI for analysis and supports configuration via committed files, such as `svelte-vitals.config.*` and `svelte-vitals-suppressions.json`. It fails the job when gating findings are present and provides a report regardless of whether it's a pull request or fork PR.
---


Version updated for **https://github.com/oekazuma/svelte-vitals-action** to version **v0.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-vitals) to find the latest changes.

## Action Summary

The svelte-vitals-action is a GitHub Action that automates static SvelteKit code health checks on pull requests. It provides inline annotations, a job summary, and a single sticky PR comment that updates in place on each push. The action uses the `svelte-vitals` CLI for analysis and supports configuration via committed files, such as `svelte-vitals.config.*` and `svelte-vitals-suppressions.json`. It fails the job when gating findings are present and provides a report regardless of whether it's a pull request or fork PR.

## What's Changed


### Minor Changes

- 9f513e6: Update the bundled analyzer to `svelte-vitals` 0.45.1 / `@svelte-vitals/core` 0.41.1, a wide range covering several upstream releases. The action's inputs and outputs are unchanged, and the step still fails on `failOn` severity rather than on any score — but that severity table itself moved, so read the first two entries before upgrading a workflow you rely on:

  - **The default gate loosens: `seo/description-presence` drops from `critical` to `warning`.** Under the default `failOn: critical`, a project whose only failure was a missing `<meta name="description">` now passes the step where it used to fail it. If you were relying on that block, set `failOn: warning` or override the rule's severity in your config. Three more severities moved, and they only bite under a non-default `failOn: warning`: `seo/og-url` `info` → `warning` (the one tightening — a previously green run can turn red), `seo/og-description` `warning` → `info`, and `seo/single-h1` splitting per finding so that two or more `<h1>` is now `info` while a missing one stays `warning`. The `seo::route` scoring pair's total weight drops from 110 to 100 as a result, so SEO and Health can shift a point or two with no finding change at all.
  - **A previously green run can turn red from files that were never analyzed.** A parse crash on argument-less `$state()` — `let el = $state();`, the idiomatic `bind:this` declaration — used to make the whole component invisible to every rule, silently. Those files are analyzed now, and what surfaces in them can include `critical` findings that fail the default gate. That is the fix working.
  - **A rule that throws no longer fails the whole step.** The run completes without that rule and its weight is removed from the Health denominator, so the score is not silently inflated. Previously the exception propagated and the action failed the job outright. Note the tradeoff: the action does not yet surface the analyzer's non-fatal warnings, so the skipped rule's id is not reported anywhere — a rule that fails now goes unmentioned instead of loud.
  - **The job summary and the sticky PR comment are hardened against the analyzed project's own content.** Strings quoted from the repo under analysis — file paths, route ids, and rule messages embedding page content such as `<title>` text or JSON-LD values — can no longer forge report structure: an embedded newline, code fence, heading, `[text](url)` link or bare `<tag>` renders as inert quoted text. Visible on well-behaved projects in one place: a message containing a literal tag (`Missing <title>`) now renders as inline code, which also fixes table cells silently dropping such tags.
  - **More of the project is reachable, so findings move in both directions.** Head and heading resolution now follows a component imported through a `kit.alias`/`kit.files.lib` alias (`$components`, `$ui`, …) instead of only `$lib/…` and relative paths; every `application/ld+json` script on a route is analyzed instead of only the last one; and `seo/single-h1` counts headings rendered by imported local components. False "Missing" findings on routes whose content lives in such components disappear and Health can rise, while defects inside them — an empty `<title>`, invalid JSON-LD, a second `<h1>` — become visible for the first time.
  - **`seo/json-ld-validity` now checks `@type` against the schema.org vocabulary.** A bare type name that is not an exact, case-sensitive schema.org type produces a `warning`, with a did-you-mean hint for a casing slip or a typo within edit distance 2. IRI and prefixed forms are never flagged, and a document whose `@context` names a non-schema.org vocabulary is exempt.
  - **Several false positives removed.** `seo/json-ld-required-props` was stale against Google's current requirements — the `Article`/`BlogPosting`/`NewsArticle`, `Organization` and `Person` rows are gone, `Product` now accepts any one of `review`/`aggregateRating`/`offers`, `Recipe` needs only `name` + `image`, `VideoObject` drops `description`. `security/handler-state-write` and `security/shared-state-import` no longer fire on a universal `+page.ts`/`+layout.ts` that exports `ssr = false`; since the former is `critical`, that can turn a red run green. `performance/render-blocking-script` no longer flags non-executing script types (`text/partytown`, `importmap`, `speculationrules`). `correctness/effect-as-onmount` no longer flags an `$effect` reading reactive state through a member expression on an imported binding or a `new …()` local.

### Patch Changes

- e40f45c: Fix the `baseline` input reporting every finding as new on projects whose `svelte-vitals.config.*` imports `svelte-vitals` — the shape the `install` wizard scaffolds.

  The baseline ref is analyzed inside a temporary git worktree, and that worktree has no `node_modules` in its ancestry, so re-loading the config file from within it threw on the import. The comparison caught the error and fell back to reporting everything, which is the opposite of what the input is for: a gate meant to show only new findings showed all of them. The action now hands its own config-file load to the baseline analysis instead of letting it look for one.

  Both sides of the comparison therefore run under the same config, so editing `svelte-vitals.config.*` between the baseline ref and the current commit no longer makes findings look new on its own.

- f2f9314: Update the bundled analyzer to `svelte-vitals` 0.46.0 / `@svelte-vitals/core` 0.42.0. Nothing the action reports changes: no rule severity, score, finding, annotation, job summary or sticky-comment output moves. Upstream's visible work in this range is CLI-only (shell completion, spinner cursor restore, the `ci install` workflow scaffold, and the dispatch layer's exit code), and the rest is internal refactoring plus two new library exports the action does not use yet.
- 18d8dea: Surface the analyzer's non-fatal warnings as workflow annotations. `analyzeProject` reports config-file problems, version-floor notices, unparseable files it skipped, and rules that crashed and were dropped from the run — the action collected all of it and printed none of it.

  The crashed-rule case is why this matters now. A rule that throws no longer aborts the analysis; the run completes without it and its weight leaves the Health denominator, so nothing about the report looks wrong. Before, the exception propagated and failed the job outright. Without this, an incomplete scan passed the gate with no trace of which rule was missing.

  The gate is unchanged — these are annotations, not failures.
