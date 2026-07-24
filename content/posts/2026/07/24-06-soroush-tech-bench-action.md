---
title: soroush-bench
date: 2026-07-24 06:11:22 +00:00
tags:
  - soroush-tech
  - GitHub Actions
draft: false
repo: https://github.com/soroush-tech/bench-action
marketplace: https://github.com/marketplace/actions/soroush-bench
version: v1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `bench-action` GitHub Action automates benchmarking of TypeScript files using the `@soroush.tech/bench` package in a Docker sandbox. It fails the CI build if any case drops below a specified minimum speed ratio compared to the baseline case, and posts results as a sticky PR comment using the bench bot if configured with the `id-token: write` permission. The action is easy to use as it doesn't require installation or setup beyond selecting a release tag.
---


Version updated for **https://github.com/soroush-tech/bench-action** to version **v1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soroush-bench) to find the latest changes.

## Action Summary

The `bench-action` GitHub Action automates benchmarking of TypeScript files using the `@soroush.tech/bench` package in a Docker sandbox. It fails the CI build if any case drops below a specified minimum speed ratio compared to the baseline case, and posts results as a sticky PR comment using the bench bot if configured with the `id-token: write` permission. The action is easy to use as it doesn't require installation or setup beyond selecting a release tag.

## What's Changed

## bench-action@v1

First public release of **Bench Gate** — a performance gate for pull requests.

It runs your repo's [`@soroush.tech/bench`](https://www.npmjs.com/package/@soroush.tech/bench) `*.bench.ts` suites inside a CPU/RAM-pinned Docker sandbox, compares every case against a baseline case, **fails the job** when any case drops below your minimum speed ratio, and posts the results as a single sticky PR comment that updates in place on every push.

**One `uses:` step, zero setup.**

### Highlights

- **Pinned sandbox, stable numbers**  
  Every suite runs in a Docker container pinned to a single CPU (`--cpuset-cpus`) with a hard CPU quota and a memory cap (swap disabled), so timings stay comparable run-to-run even on shared runners. `rounds: N` gates on the median of N runs for extra noise immunity.

- **Ratio gate**  
  Pick a `baseline-case` and a `min-ratio` (percent). Any case slower than the threshold fails its file; any failed file fails the job. Gate against your last published version by declaring it via npm's `latest` dist-tag directly inside the bench file.

- **Zero-config results comment**  
  `github-token` defaults to the workflow's automatic runtime token—no secrets to wire. Pass `''` to skip commenting entirely; the gate verdict is never affected by comment delivery.

- **Branded comments (optional)**  
  Install the [bench GitHub App](https://github.com/apps/soroush-bench) and grant `id-token: write`. The comment is authored by the **bench bot** via an OIDC-verified relay, with automatic fallback to a direct GitHub comment if the relay is unavailable.

- **Everything baked in**  
  The bundled runner and vendored sandbox ship with the release tag. GitHub-hosted runners already provide Docker, so there's nothing to install, build, or download in your workflow.

### Getting Started

```yaml
jobs:
  bench:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write # Required for the results comment
      id-token: write # Optional, enables branded "bench bot" comments

    steps:
      - uses: actions/checkout@v5

      - uses: soroush-tech/bench-action@v1
        with:
          bench-dir: bench
          baseline-case: previous
          min-ratio: "80"
          rounds: "5"
```

### Branded Comments

Branded comments are a **one-time, secret-free setup**:

1. Install the [bench GitHub App](https://github.com/apps/soroush-bench) on your repository.
2. Keep `id-token: write` in your workflow permissions.

If you skip both, everything still works—the results comment is simply posted by `github-actions[bot]`.

### Requirements

- A **Linux** runner with Docker (all GitHub-hosted Linux runners qualify).
- The **Node 24 Actions runtime**. Any current GitHub-hosted runner works; self-hosted runners must be recent enough to include Node 24.
- Pin a release (`@v1` or a version tag). **`@main` does not include build artifacts and will not run.**
