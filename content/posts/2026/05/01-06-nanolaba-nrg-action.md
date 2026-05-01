---
title: Nanolaba Readme Generator
date: 2026-05-01 06:16:23 +00:00
tags:
  - nanolaba
  - GitHub Actions
draft: false
repo: https://github.com/nanolaba/nrg-action
marketplace: https://github.com/marketplace/actions/nanolaba-readme-generator
version: v1.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nanolaba/nrg-action** to version **v1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nanolaba-readme-generator) to find the latest changes.

## Action Summary

The **Nanolaba Readme Generator GitHub Action** automates the generation, verification, and validation of multi-language README/Markdown files from a single `.src.md` template within CI pipelines. It eliminates the need for manual README updates by leveraging the NRG CLI, ensuring consistent and up-to-date documentation across projects without requiring local Java installation or additional dependencies. Key capabilities include automated generation of README files, detection of discrepancies during pull requests, and validation of template syntax for errors.

## What's Changed

Adds **`check-paths`** input — limit `mode: check` to specific generated outputs by glob pattern.

Tracks NRG [v1.2](https://github.com/nanolaba/readme-generator/releases/tag/v1.2). Rolling `v1` updated to point here.

## What's new

- **`check-paths` input** (multi-line, requires `mode: check`). Each non-empty line becomes one `--check-paths` arg. Outputs not matched by any pattern are skipped from both the diff and the missing-file check, so workflows where only the canonical README is committed (and translations are bot-managed) get a working drift check at PR time. A pattern matching nothing prints a stderr `WARN` and exits `0` so typos do not silently disable the check. Setting `check-paths` with `mode: generate` or `mode: validate` fails up-front with `::error::` before the jar is invoked. Closes [nanolaba/readme-generator#53](https://github.com/nanolaba/readme-generator/issues/53).

## Drift check on a subset of outputs

```yaml
name: README drift check
on:
  pull_request:
    paths: ['**/*.src.md', 'README.md']
permissions:
  contents: read
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: nanolaba/nrg-action@v1
        with:
          file: README.src.md
          mode: check
          check-paths: |
            README.md
            docs/canonical/*.md
```

Patterns are cwd-relative `glob:` patterns and follow the same `**/` zero-or-more-directories semantics as NRG's multi-file source globs.

## Pinning

- `@v1` — auto-updates within the v1 major (recommended).
- `@v1.2` — locked to this minor.
- `@<full-sha>` — pinned commit for supply-chain-policy compliance.

## Compatibility

- Defaults to NRG `latest` (now `v1.2`) — earlier NRG releases (`v1.0`, `v1.1`) work but reject the `--check-paths` flag with a parse error. Pin `nrg-version: v1.2` (or omit, since `latest` resolves to v1.2) when using `check-paths`.

## Documentation

[GitHub Action reference](https://github.com/nanolaba/readme-generator/blob/v1.2/README.md#use-as-a-github-action) in the NRG README.
