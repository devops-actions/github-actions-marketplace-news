---
title: Nanolaba Readme Generator
date: 2026-04-29 22:03:35 +00:00
tags:
  - nanolaba
  - GitHub Actions
draft: false
repo: https://github.com/nanolaba/nrg-action
marketplace: https://github.com/marketplace/actions/nanolaba-readme-generator
version: v1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nanolaba/nrg-action** to version **v1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nanolaba-readme-generator) to find the latest changes.

## Action Summary

The Nanolaba Readme Generator GitHub Action automates the generation, validation, and verification of multi-language README/Markdown files from a single `.src.md` template. It streamlines CI workflows by eliminating manual README updates, ensuring consistency, and detecting template issues or content drift. This action encapsulates the NRG CLI, requiring no additional dependencies like Java on the consuming repository, and supports operations such as file generation, template validation, and content verification.

## What's Changed

# Nanolaba Readme Generator (NRG) Action — v1.0

Composite GitHub Action that turns a single `README.src.md` template into N localized README files (`README.md`, `README.zh-CN.md`, `README.ja.md`, …) on every push or pull request. Powered by [Nanolaba Readme Generator](https://github.com/nanolaba/readme-generator) — open-source, Apache 2.0, Java 8+.

No local toolchain needed: the action provisions Java itself (configurable JDK version / distribution) and downloads the requested NRG release at runtime.

## Quick start

```yaml
- uses: actions/checkout@v4
- uses: nanolaba/nrg-action@v1
  with:
    file: README.src.md
```

## Three modes

- **`generate`** (default) — writes the localized README files to disk. Pair with `peter-evans/create-pull-request` to auto-commit on push, or with `git diff` to detect drift.
- **`check`** — read-only verification: exits non-zero with a unified diff to stderr if files on disk differ from what NRG would generate. Use this on pull requests to fail builds when contributors edit a generated README directly instead of regenerating from the template.
- **`validate`** — scans the template for authoring mistakes (unknown widgets, undeclared language markers, missing imports, unbalanced ignore-blocks). No files written.

## Inputs

| Name | Default | Purpose |
|------|---------|---------|
| `file` | — | Path to a single `.src.md` template. |
| `files` | — | Multi-line list (one path per line) for multi-template projects. Mutually exclusive with `file`. |
| `mode` | `generate` | `generate` \| `check` \| `validate`. |
| `nrg-version` | `latest` | NRG release tag (e.g. `v1.1`) or `latest`. Pin for reproducibility. |
| `java-version` | `17` | JDK version for `actions/setup-java`. |
| `java-distribution` | `temurin` | JDK distribution. |
| `setup-java` | `true` | Whether the action should install Java itself. Set to `false` if Java is already set up earlier in the job. |
| `charset` | `UTF-8` | Source file encoding. |
| `log-level` | `info` | `trace` \| `debug` \| `info` \| `warn` \| `error`. |
| `working-directory` | `.` | Directory in which NRG runs. |

## Outputs

| Name | Description |
|------|-------------|
| `version` | Resolved NRG version (e.g. `v1.1`). Useful when `nrg-version=latest`. |
| `changed-files` | Newline-separated list of files written or modified by NRG. |

## Drift check on pull requests

```yaml
on:
  pull_request:
    paths: ['**/*.src.md', 'README*.md']
permissions:
  contents: read
jobs:
  drift-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: nanolaba/nrg-action@v1
        with:
          file: README.src.md
          mode: check
```

## Production reference

[`eoctet/Octet.Chat`](https://github.com/eoctet/Octet.Chat) — merged migration (en + zh-CN, non-default `README.Zh_CN.md` filename). More open migrations across multi-language projects of varying scale at [github.com/search?q=README.src.md+filename:README.src.md&type=code](https://github.com/search?q=README.src.md+filename%3AREADME.src.md&type=code).

## Resources

- **NRG core engine:** https://github.com/nanolaba/readme-generator (CLI, Maven plugin, Java library)
- **Documentation:** [Template syntax](https://github.com/nanolaba/readme-generator/blob/main/docs/TemplateSyntax.src.md) · [Widgets](https://github.com/nanolaba/readme-generator/blob/main/docs/Widgets.src.md) · [GitHub Action examples](https://github.com/nanolaba/nrg-action/tree/main/examples)
- **License:** Apache 2.0

