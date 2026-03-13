---
title: astral-sh/setup-uv
date: 2026-03-13 05:48:49 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v7.5.0
dependentsNumber: "49,866"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v7.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **49,866** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Action Summary

The `setup-uv` GitHub Action automates the installation and configuration of the `uv` tool in workflows, ensuring a specific or latest version is available and accessible via the system PATH. It optimizes workflow performance by caching the installed version, supports error handling through problem matchers, and provides optional features like checksum verification and cache persistence. This action simplifies dependency management and enhances efficiency for projects utilizing `uv`.

## Release notes

# No more rate-limits

This release addresses a long-standing source of timeouts and rate-limit failures in setup-uv.

 Previously, the action resolved version identifiers like 0.5.x by iterating over available uv releases via the GitHub API to find the best match. In contrast, latest and exact versions such as 0.5.0 skipped version resolution entirely and downloaded uv directly.

The `manifest-file` input was an earlier attempt to improve this. It allows providing an url to a file that lists available versions, checksums, and even custom download URLs. The action also shipped with such a manifest.
However, because that bundled file could become outdated whenever new uv releases were published, the action still had to fall back to the GitHub API in many cases.

This release solves the problem by sourcing version data from Astral’s versions repository via the raw content endpoint:

https://raw.githubusercontent.com/astral-sh/versions/refs/heads/main/v1/uv.ndjson

By using the raw endpoint instead of the GitHub API, version resolution no longer depends on API authentication and is much less likely to run into rate limits or timeouts.

---

> [!TIP]
> The next section is only interesting for users of the `manifest-file` input

The `manifest-file` input lets you override that source with your own URL, for example to test custom uv builds or alternate download locations.

The manifest file must be in NDJSON format, where each line is a JSON object representing a version and its artifacts. For example:

```json
{"version":"0.10.7","artifacts":[{"platform":"x86_64-unknown-linux-gnu","variant":"default","url":"https://example.com/uv-x86_64-unknown-linux-gnu.tar.gz","archive_format":"tar.gz","sha256":"..."}]}
{"version":"0.10.6","artifacts":[{"platform":"x86_64-unknown-linux-gnu","variant":"default","url":"https://example.com/uv-x86_64-unknown-linux-gnu.tar.gz","archive_format":"tar.gz","sha256":"..."}]}
```

> [!WARNING]  
> The old format still works but is deprecated. A warning will be logged when you use it.

## Changes

- docs: replace copilot instructions with AGENTS.md @eifinger (#794)

## 🚀 Enhancements

- Use astral-sh/versions as primary version provider @eifinger (#802)

## 📚 Documentation

- docs: add cross-client dependabot rollup skill @eifinger (#793)

