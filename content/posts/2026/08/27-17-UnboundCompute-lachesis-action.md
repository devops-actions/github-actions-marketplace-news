---
title: Lachesis Security Scan
date: 2026-08-27 17:30:05 +00:00
tags:
  - UnboundCompute
  - GitHub Actions
draft: false
repo: https://github.com/UnboundCompute/lachesis-action
marketplace: https://github.com/marketplace/actions/lachesis-security-scan
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action builds a compiler-precise code property graph of your repo, traces untrusted input to dangerous sinks, and automates security auditing by emitting reviewable SARIF from your own runner. It identifies missing authorization checks in sibling functions that reach the same sink, providing inline comments on pull requests when enabled.
---


Version updated for **https://github.com/UnboundCompute/lachesis-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lachesis-security-scan) to find the latest changes.

## Action Summary

This GitHub Action builds a compiler-precise code property graph of your repo, traces untrusted input to dangerous sinks, and automates security auditing by emitting reviewable SARIF from your own runner. It identifies missing authorization checks in sibling functions that reach the same sink, providing inline comments on pull requests when enabled.

## What's Changed

- Track the unified Lachesis 0.3.0 command line: the graph build now runs
  `lachesis build` and the census runs `lachesis candidates`, replacing the
  per-verb `lachesis-analyze` / `lachesis-candidates` console scripts that 0.3.0
  collapsed into subcommands of a single `lachesis` entrypoint.
- Build and stage the native analysis kernel during engine install. From Lachesis
  0.3.0 the query dataflow tier is materialized from a native binary sidecar with no
  in-process Python enrichment fallback, so the kernel must be present in the
  installed package; the install step now runs `tools/stage_native.py --build`.
- Drop the inert `LACHESIS_QUERY_EPHEMERAL_ENRICH` export from the SARIF step and the
  `--prune` default from `analyze-args`: 0.3.0's query no longer re-enriches in
  process, and `lachesis build` prunes by default (pass `--no-prune` to retain
  lexical records).
- Pull a pinned, prebuilt `libclang` (clang 17) from PyPI during install and point
  the engine at it with `LIBCLANG_PATH`. The native C frontend loads libclang at
  runtime and targets the clang 17 API; relying on a runner's ambient libclang risks
  loading an older one, where a 17-only entry point becomes a null call and the
  frontend segfaults. Pinning makes the C frontend deterministic across runners.
- Run the graph query from the graph's own directory. `python -m lachesis.cli.query`
  prepends the working directory to `sys.path`, so scanning a checkout that itself
  contains a `lachesis/` package (the engine dogfooding its own source) imported the
  un-built source tree instead of the installed engine and reported its staged native
  kernel as missing. Querying from the graph directory resolves the installed engine.
- Surface the query engine's own stderr when a query fails, instead of a bare exit
  code, so an engine-side error (missing sidecar, load failure) is diagnosable from
  the Action log.
- Pin development defaults to the reviewed Lachesis `v0.3.0` release.

