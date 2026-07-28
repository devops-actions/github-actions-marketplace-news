---
title: svelte-vitals
date: 2026-07-28 22:51:08 +00:00
tags:
  - oekazuma
  - GitHub Actions
draft: false
repo: https://github.com/oekazuma/svelte-vitals-action
marketplace: https://github.com/marketplace/actions/svelte-vitals
version: v0.5.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The svelte-vitals-action is a GitHub Action that performs static SvelteKit code-health checks, including SEO, Performance, Correctness, Security, and Architecture. It automates these checks on pull requests and provides inline annotations, a job summary, and a sticky PR comment that updates in place with the scan results. The action uses svelte-vitals, a tool for analyzing SvelteKit projects, and is configured through committed files instead of YAML inputs.
---


Version updated for **https://github.com/oekazuma/svelte-vitals-action** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-vitals) to find the latest changes.

## Action Summary

The svelte-vitals-action is a GitHub Action that performs static SvelteKit code-health checks, including SEO, Performance, Correctness, Security, and Architecture. It automates these checks on pull requests and provides inline annotations, a job summary, and a sticky PR comment that updates in place with the scan results. The action uses svelte-vitals, a tool for analyzing SvelteKit projects, and is configured through committed files instead of YAML inputs.

## What's Changed


### Minor Changes

- 7ccb121: Update the bundled analyzer to `svelte-vitals` 0.34.0 / `@svelte-vitals/core` 0.30.0. The action's inputs and outputs are unchanged — what changes is what the scan reports:

  - Two new `correctness` rules. `correctness/base-path-navigation` flags hardcoded root-relative navigation (`<a href="/about">`, `goto('/about')`, `redirect(303, '/login')`) in projects that set `kit.paths.base`, where it 404s in production; `correctness/checkable-bind-value` flags `bind:value` on `<input type="checkbox">` / `<input type="radio">`, where the bound state silently never updates.
  - Recalibrated Architecture thresholds: `architecture/prop-count` now flags more than 6 props (was 10) and `architecture/component-size` more than 200 lines (was 400). Expect new `info` findings on existing projects. Nothing new fails by default (`failOn` defaults to `critical`), but a repo running `failOn: 'info'` can start failing on components that passed before.
  - New opt-in rule `architecture/private-scope-import`, inert until `scopes` is configured.
  - Rule settings accept an object form, `{ severity, options }`, so a project can move a configurable rule's thresholds or extend its built-in lists from `svelte-vitals.config.*` — including the two recalibrated Architecture thresholds. Values in `rules` are now validated: an invalid severity that was previously ignored is a fatal config error, and the action's step fails on it.
  - Fewer false positives across the component-analysis rules: writes to `{@const ...}` / `{let ...}` / `{const ...}` template locals are no longer misattributed to a same-named top-level `$state`.
