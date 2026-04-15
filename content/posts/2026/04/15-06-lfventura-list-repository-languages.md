---
title: Repository Languages and CodeQL Support Map
date: 2026-04-15 06:21:30 +00:00
tags:
  - lfventura
  - GitHub Actions
draft: false
repo: https://github.com/lfventura/list-repository-languages
marketplace: https://github.com/marketplace/actions/repository-languages-and-codeql-support-map
version: v3.1.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lfventura/list-repository-languages** to version **v3.1.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repository-languages-and-codeql-support-map) to find the latest changes.

## Action Summary

This GitHub Action retrieves and outputs the programming languages used in a repository by leveraging GitHub's "List repository languages" API endpoint. It automates tasks such as generating a list of repository languages or creating workflows based on those languages, streamlining language-specific job execution in CI/CD pipelines. Key capabilities include language output as JSON or CodeQL-compatible formats and customization for language-specific build configurations.

## What's Changed

## Highlights

- **New: GitHub Actions workflow scanning support** — detects `.github/workflows/*.{yml,yaml}` files and injects `actions` as a CodeQL pseudo-language into the matrix output with `build-mode: none`. Enables CodeQL scanning of workflow files themselves in custom/advanced setups.
- **Runtime upgrade: Node 20 → Node 24** — addresses [GitHub's deprecation of Node 20 for actions](https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/).

## Why `actions` matters

CodeQL has supported scanning GitHub Actions workflow files as a distinct `actions` language since mid-2024. The GitHub `/repos/{owner}/{repo}/languages` endpoint (backed by Linguist) does not report `actions` — workflow YAMLs show up only as generic YAML and are filtered out. This release adds manual detection so custom/advanced CodeQL setups get the same coverage GitHub's default setup auto-enrollment provides.

## Output matrix change

Repos with workflow files will now see an additional matrix entry from `languages_codeql_w_buildmode`:

```json
{
  "language": "actions",
  "build-mode": "none",
  "manual-build-command": "",
  "vpn-connection": false,
  "pre-commands": [],
  "env-vars": {},
  "build-setup": []
}
```

Repos without `.github/workflows/` are unaffected.

## Breaking changes

None. However, CodeQL analysis matrices driven by this action's output will gain one additional short-running job per repo that has workflow files. This is the intended outcome.

## Upgrade

```yaml
- uses: lfventura/list-repository-languages@v3.1.0
  # or pin the major tag for auto-updates within v3.x:
  # uses: lfventura/list-repository-languages@v3
```

**Full diff:** https://github.com/lfventura/list-repository-languages/compare/v3.0.4...v3.1.0
