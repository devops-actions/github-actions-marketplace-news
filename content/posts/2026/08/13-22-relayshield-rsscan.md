---
title: RelayShield Secret Scan
date: 2026-08-13 22:21:23 +00:00
tags:
  - relayshield
  - GitHub Actions
draft: false
repo: https://github.com/relayshield/rsscan
marketplace: https://github.com/marketplace/actions/relayshield-secret-scan
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `rsscan` GitHub Action automatically detects and blocks commits and builds introducing API keys, tokens, and other machine credentials in a repository by scanning added lines. It uses local patterns to detect common credential types, providing inline annotations on pull requests to help developers identify and address security issues early. The action is suitable for use with pre-commit hooks, GitHub Actions, GitLab CI/CD, CircleCI, Docker pipelines, and various other CI tools without requiring any additional configuration or setup beyond installation.
---


Version updated for **https://github.com/relayshield/rsscan** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/relayshield-secret-scan) to find the latest changes.

## Action Summary

The `rsscan` GitHub Action automatically detects and blocks commits and builds introducing API keys, tokens, and other machine credentials in a repository by scanning added lines. It uses local patterns to detect common credential types, providing inline annotations on pull requests to help developers identify and address security issues early. The action is suitable for use with pre-commit hooks, GitHub Actions, GitLab CI/CD, CircleCI, Docker pipelines, and various other CI tools without requiring any additional configuration or setup beyond installation.

## What's Changed

## `rsscan --deps`

Counts the accounts that can publish into your npm dependencies.

```bash
pip install rsscan
rsscan --deps
```

A self-replicating npm worm does not start with malicious code. It starts with a maintainer account: an infostealer takes the publish token out of somebody's `.npmrc`, and a patch version nobody reads ships four steps before there is any artifact for a scanner to analyse.

Every package security tool reads the artifact. None of them can tell you how many humans hold publish rights over your tree.

An ordinary install of Next.js, React, TypeScript, ESLint, Jest, axios, Tailwind, Prettier and dotenv:

```
     433  dependencies in package-lock.json
     275  distinct publisher accounts can push code into them
     126  on personal webmail (no SSO, no central revocation)
      28  role or automation addresses
```

Reproduce it with `npm install --package-lock-only --ignore-scripts`, then `rsscan --deps`.

### What it does not do

It counts, and deliberately stops there. No screening, no verdicts, and it names nobody: the output is integers.

- **Reads locally.** No account, no API key, no telemetry. The only host it contacts is `registry.npmjs.org`.
- **Unresolved packages are counted separately** and never folded into the totals. A package whose publishers could not be looked up is not a package with no publishers.
- **Always exits 0.** There is no dependency count that constitutes a build failure, so this is a report and not a gate.

### Also in this release

- `--org` remains opt-in and off by default.
- The module docstring no longer implies a `--staged` flag exists. Staged is what you get without `--rev-range`.

**Full changelog:** https://github.com/RelayShield/rsscan/compare/v0.1.3...v0.2.0
