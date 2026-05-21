---
title: Aguara Security Scanner
date: 2026-05-21 14:53:08 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.18.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.18.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a local-first security scanner designed to identify vulnerabilities in software supply chains and AI agents by analyzing trust points such as dependencies, lockfiles, install scripts, CI workflows, and MCP configurations. It helps prevent supply-chain attacks by verifying these critical inputs before they are trusted, enabling teams to proactively safeguard sensitive data and systems. Key capabilities include lockfile parsing, package tree inspection, and integration with CI processes, all while ensuring privacy and avoiding reliance on external services.

## What's Changed

Aguara v0.18.3 is a patch release for the pattern prefilter.

No detection rule changed. The fix is in the Aho-Corasick keyword prefilter that decides which regex rules should run against a file. In v0.18.x, a few valid matches could be skipped before regex evaluation when the rule depended on weak alternation branches or optional characters.

## What changed

The prefilter now handles:

- weak alternation branches such as `API[_-]?KEY|SECRET|TOKEN`
- top-level alternations in custom rules such as `api|secret`
- optional characters such as `https?://`

This restores coverage for:

- `MCPCFG_003` on MCP configs using env names such as `API_KEY`
- `SSRF_002`, `SSRF_006`, `SSRF_009` on `http://` inputs
- custom rules with similar alternation shapes

A new regression test runs every built-in rule's `true_positive` example through the real matcher, including the prefilter, so future keyword-extraction drift is caught in CI.

## Use it

**CLI**

```bash
aguara scan .
aguara check .
aguara audit . --ci
```

**Docker**

```bash
docker run --rm -v "$PWD:/repo:ro" ghcr.io/garagon/aguara:0.18.3 scan /repo
```

**GitHub Action**

```yaml
- uses: garagon/aguara@v0.18.3
  with:
    path: .
    fail-on: high
    version: v0.18.3
```

## Install or upgrade

```bash
# Linux / macOS
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh \
  | VERSION=v0.18.3 sh

# Docker
docker pull ghcr.io/garagon/aguara:0.18.3

# Homebrew
brew upgrade garagon/tap/aguara
```

## Verification

Release artifacts are signed with Cosign keyless OIDC and include SPDX SBOMs. The Docker image is multi-arch (`linux/amd64`, `linux/arm64`), signed at digest, and includes SLSA provenance plus SBOM attestations.

Maintainer verification for this release:

```bash
VERSION=v0.18.3 .github/scripts/verify-release.sh
```

Result: 6/6 PASS on darwin/arm64. Binary reports 0.18.3 with 219 cataloged detections.

## Compatibility

- Drop-in patch for v0.18.2.
- Catalog unchanged: 193 YAML pattern rules + 26 analyzer-emitted detections.
- No JSON shape changes.
- No CLI flag changes.
- Go library consumers get the fix when they update to `github.com/garagon/aguara v0.18.3` and rebuild.

