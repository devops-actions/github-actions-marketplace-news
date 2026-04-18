---
title: droast — Dockerfile linter
date: 2026-04-18 13:57:31 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

This GitHub Action, **dockerfile-roast**, is a linter designed to analyze Dockerfiles for best practices and potential issues. It automates the detection of common pitfalls, such as insecure configurations, inefficient builds, and hardcoded secrets, providing actionable feedback through inline annotations in pull request diffs. Its key capabilities include customizable rule enforcement, support for CI-friendly outputs, and multiple severity levels to streamline Dockerfile reviews and improve container security and efficiency.

## What's Changed

## what's new

### 4 new lint rules (68 total)

| id | rule |
|----|------|
| DF065 | FROM pulls from an unrecognised image registry |
| DF066 | bash-specific syntax used without a SHELL instruction |
| DF067 | COPY of a local archive — ADD auto-extracts tarballs |
| DF068 | FROM, ONBUILD, and MAINTAINER are forbidden as ONBUILD triggers |

### bug fixes

- **DF006** — no longer false-positives on local archive files (`.tar.gz`, `.tgz`, `.tar.xz`, `.tar.bz2`); ADD is the correct instruction when auto-extraction is intended
- **DF006** — no longer false-positives when ADD uses `--chown` or `--checksum` flags alongside a URL or archive source
- **DF062** — no longer false-positives for `ENV PATH="/opt/venv/bin:$PATH"` patterns; only fires when the value is literally a bare self-reference
- **DF065** — no longer false-positives for Docker Hub images referenced with a tag (e.g. `ubuntu:22.04`); the colon is a tag separator, not a registry port

Thanks to @ddmunhoz and others for the issue reports and patches.

### online tool

droast now runs in your browser — paste any Dockerfile and get instant lint results, no install needed:
**https://ewry.net/droast-dockerfile-linter/**

### test suite

Integration test coverage expanded from 16 tests to 168, with fire and clear cases for all 68 rules.

---

## install

**Homebrew** (macOS and Linux):
```bash
brew tap immanuwell/droast git@github.com:immanuwell/homebrew-droast.git
brew install immanuwell/droast/droast
```

**Binary** — download below, make it executable, put it on your PATH:
```bash
chmod +x droast-linux-x86_64
mv droast-linux-x86_64 ~/.local/bin/droast
```

**From source:**
```bash
cargo install dockerfile-roast
```

---

## github action

```yaml
- uses: immanuwell/dockerfile-roast@1.1.0
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
      - uses: immanuwell/dockerfile-roast@1.1.0
```

available inputs (all optional):

| input | default | description |
|-------|---------|-------------|
| `files` | `Dockerfile` | file(s) or glob to lint |
| `min-severity` | `info` | `info`, `warning`, or `error` |
| `skip` | — | comma-separated rule IDs to ignore |
| `no-roast` | `false` | technical output only, no jokes |
| `no-fail` | `false` | advisory mode — never blocks the build |
| `image-tag` | `latest` | pin to a specific droast release, e.g. `1.1.0` |
