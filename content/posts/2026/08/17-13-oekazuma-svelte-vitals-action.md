---
title: svelte-vitals
date: 2026-08-17 13:53:26 +00:00
tags:
  - oekazuma
  - GitHub Actions
draft: false
repo: https://github.com/oekazuma/svelte-vitals-action
marketplace: https://github.com/marketplace/actions/svelte-vitals
version: v0.10.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The svelte-vitals-action is a GitHub Action that automates static SvelteKit code health checks (SEO, Performance, Correctness, Security, Architecture, Accessibility) on pull requests. It provides inline annotations on the diff, a job summary, and a sticky PR comment that updates in place with new findings as changes are pushed. The action uses the svelte-vitals CLI for analysis and supports input parameters for configuring the scan scope, output format, and error handling.
---


Version updated for **https://github.com/oekazuma/svelte-vitals-action** to version **v0.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-vitals) to find the latest changes.

## Action Summary

The svelte-vitals-action is a GitHub Action that automates static SvelteKit code health checks (SEO, Performance, Correctness, Security, Architecture, Accessibility) on pull requests. It provides inline annotations on the diff, a job summary, and a sticky PR comment that updates in place with new findings as changes are pushed. The action uses the svelte-vitals CLI for analysis and supports input parameters for configuring the scan scope, output format, and error handling.

## What's Changed


### Minor Changes

- 0153223: Update the bundled analyzer to `svelte-vitals` 0.48.0 / `@svelte-vitals/core` 0.44.0. The action's inputs and outputs are unchanged, but one change here stops a workflow that currently passes until a file is renamed, and a new rule category moves every Health score.

  **Config files must be ESM, and `svelte-vitals.config.mjs` is no longer read.** The loader searches `svelte-vitals.config.{js,ts}` only. A leftover `.mjs` throws with a rename hint, and a `.js` config that parses as CommonJS throws with a "config files are ESM" error — both propagate out of the analysis and fail the step outright, rather than quietly falling back to defaults. Rename a `.mjs` config to `.js` (the project must be `"type": "module"`, which is SvelteKit's default) or to `.ts`. CommonJS projects are no longer supported.

  **A new Accessibility category adds 15 rules, all on by default, and shifts every Health score.** ARIA role, attribute and value validity, required ARIA props, interactive-element nesting, accessible-name computability, label/control association, list-like text, `<select>` placeholder options, machine-readable `<time>`, an `app.html` doctype check, plus landmark duplication/nesting and project-wide id/idref integrity resolved across component boundaries. Existing projects will see new findings. Twelve of the fifteen are `warning` and three are `info`; none is `critical`, so under the default `failOn: critical` the new category adds annotations and moves scores without being able to fail the step. A project configured with `failOn: warning` is a different matter — twelve warning-level rules landing at once can turn it red. Separately from any finding, a sixth category now enters the weighted average, so the Health number in the job summary and the sticky comment moves on upgrade with no change on your side — recalibrate anything reading it.

  The analyzer also raises its minimum Node to 24.16.0. The action runs on `node24`, so this is only a concern if your runner's Node 24 predates that patch.

  Beyond that, the scan reaches code it previously could not:

  - **Projects styling components in a CSS dialect were not analyzable at all.** Svelte parses a `<style>` body as CSS whatever its `lang` says, so one `<style lang="scss">` block made a component unparseable, and a single unparseable route failed the entire run — which for this action meant the step failed with no report. SCSS, Less and Stylus projects now analyze normally, and will see their first real report.
  - **Large projects were losing files to an exhausted descriptor limit.** Every `.svelte` file was read in parallel with no bound, so a big tree ran out of descriptors and each `EMFILE` was misattributed as a parse failure and dropped — the file went unanalyzed and the score never reflected the gap. The action did report the count as a skipped-file warning, so this was visible if you were reading annotations, just misdescribed. Reads are now bounded, so those files are analyzed and can carry findings.
  - **Source mode no longer collapses `<link>` and `<script src>` tags that share a `rel` or `src`.** The composed `<svelte:head>` kept only the last one per key across the layout chain, so a page with two `rel="preload"` entries, both Google Fonts `preconnect` origins, or several `hreflang` alternates was judged on one of them — producing a false "un-preconnected origin" on a correctly configured site — and a page's `defer` copy of a script masked the layout's render-blocking one. `rel="canonical"` is the deliberate exception and still collapses, so a page canonical continues to override the layout's. Findings move in both directions here, and stored baselines or suppressions may need re-recording.
  - `<link>` `rel` and `as` keywords are now matched case-insensitively as the HTML spec requires, so `rel="Canonical"` and `rel="Preload"` are recognised.
  - The inline `svelte-vitals-disable-next-line` directive now honours `a11y/*` rule ids, which it silently ignored.

### Patch Changes

- 74130f7: Update the bundled analyzer to `svelte-vitals` 0.48.1 / `@svelte-vitals/core` 0.45.0, and take the report and gating functions from `@svelte-vitals/core`'s stable entry now that they are exported there.

  Nothing the action reports changes: no rule, severity, score, annotation, job summary or sticky-comment output moves. The promotion upstream is a pure re-export, and the four functions this action calls — `formatGithubReport`, `formatMarkdownReport`, `summarize`, `hasFailureAtOrAbove` — keep the same signatures and behaviour.

  What changes is the promise behind them. They previously came from `@svelte-vitals/core/internal`, which upstream excludes from semver and may reshape in any release including a patch, so a dependency bump could break this action's committed bundle with only its own CI typecheck standing in the way. They now come from an entry covered by semver.
