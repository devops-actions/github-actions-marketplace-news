---
title: droast — Dockerfile linter
date: 2026-04-14 22:21:41 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

The `droast` GitHub Action is a Dockerfile linter designed to identify and flag bad practices in Dockerfiles, providing feedback in a direct and opinionated manner. It automates the process of reviewing Dockerfiles for issues like insecure configurations, inefficiencies, and anti-patterns, and integrates seamlessly into CI pipelines by annotating pull request diffs with findings. Key capabilities include severity filtering, rule customization, multiple output formats (e.g., GitHub annotations, JSON), and the option to suppress non-critical errors.

## What's Changed

# 1.0.1 release.

## what's in the box

- 63+ lint rules covering base images, security, package managers, layer hygiene, instruction quality, service quality, and language-specific checks (Python, Node)
- colored terminal output with snarky roast messages
- json, github actions, and compact output formats
- `--list-rules`, `--skip`, `--min-severity`, `--no-roast` flags
- shell completions for bash, zsh, and fish (`droast completion <shell>`)

## install

download the binary below, make it executable, and put it on your PATH:

```bash
chmod +x droast-linux-x86_64
mv droast-linux-x86_64 ~/.local/bin/droast
```

or build from source:

```bash
cargo install dockerfile-roast
```

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/9137381b-e075-4659-aa7a-90d2a3a1c786" />

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/d38791e5-e260-4887-80af-1254d688bcbe" />

## github action

add droast to any repo in 5 lines:

```yaml
- uses: immanuwell/dockerfile-roast@1.0.0
```

full example (`.github/workflows/lint.yml`):

```yaml
name: Lint Dockerfiles

on: [push, pull_request]

jobs:
  droast:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: immanuwell/dockerfile-roast@1.0.0
```

findings show up as inline annotations on the PR diff. no configuration required.

available inputs (all optional):

| input | default | description |
|-------|---------|-------------|
| `files` | `Dockerfile` | file(s) or glob to lint |
| `min-severity` | `info` | `info`, `warning`, or `error` |
| `skip` | — | comma-separated rule IDs to ignore |
| `no-roast` | `false` | technical output only, no jokes |
| `no-fail` | `false` | advisory mode — never blocks the build |
| `image-tag` | `latest` | pin to a specific droast release, e.g. `1.0.0` |

example with options:

```yaml
- uses: immanuwell/dockerfile-roast@1.0.0
  with:
    files: '**/Dockerfile'
    min-severity: warning
    skip: DF012,DF022
    no-fail: true        # report findings but don't block the PR
```

