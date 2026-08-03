---
title: svelte-vitals
date: 2026-08-03 15:12:35 +00:00
tags:
  - oekazuma
  - GitHub Actions
draft: false
repo: https://github.com/oekazuma/svelte-vitals-action
marketplace: https://github.com/marketplace/actions/svelte-vitals
version: v0.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The svelte-vitals-action is a GitHub Action that automates static SvelteKit code-health checks such as SEO, performance, correctness, security, and architecture on every pull request. It provides inline annotations in the diff, a job summary, and updates a sticky PR comment with findings. The action uses the svelte-vitals CLI to analyze the project directory and can be easily set up using the generator or by hand.
---


Version updated for **https://github.com/oekazuma/svelte-vitals-action** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-vitals) to find the latest changes.

## Action Summary

The svelte-vitals-action is a GitHub Action that automates static SvelteKit code-health checks such as SEO, performance, correctness, security, and architecture on every pull request. It provides inline annotations in the diff, a job summary, and updates a sticky PR comment with findings. The action uses the svelte-vitals CLI to analyze the project directory and can be easily set up using the generator or by hand.

## What's Changed


### Minor Changes

- ca45599: Update the bundled analyzer to `svelte-vitals` 0.37.0 / `@svelte-vitals/core` 0.31.1. The action's inputs and outputs are unchanged — what changes is what the scan reports and the numbers it prints:

  - **Scores are now floored instead of rounded**, so a reported 100 means the deduction was exactly zero. Every category score and Health can move down by one point, and Health is computed from unrounded category scores (the old double rounding could move it two). A workflow gating on the summary's Health number should expect it a point lower.
  - One new rule **on by default**: `architecture/route-component-import` reports a component importing a SvelteKit route entry (`+page.svelte`, `+layout.svelte`, `+error.svelte`, and their `@` breakout forms). Existing projects may see new `info` findings; stories, tests and specs are exempt.
  - Three new opt-in Architecture rules, inert until configured: `architecture/unit-entry-file`, `architecture/directory-naming`, `architecture/reserved-directory-names`.
  - Import specifiers now resolve through the aliases a project declares in `svelte.config.{js,ts}` (`kit.alias`, and `kit.files.lib` when `$lib` has been moved). Projects importing through their own aliases will see findings that were previously invisible — `security/shared-state-import` in particular was inert for them.
  - Fewer false positives: `performance/heavy-import` no longer reports type-only imports, which are erased at build.
