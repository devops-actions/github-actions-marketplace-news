---
title: Aguara Security Scanner
date: 2026-05-17 14:05:38 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.17.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.17.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanning GitHub Action designed to detect and prevent threats such as prompt injection, data exfiltration, and supply-chain attacks in AI agent skills and MCP servers before deployment. It automates static analysis using 193 detection rules, multiple scan analyzers, and encoded payload decoders to identify vulnerabilities across various file types and environments without requiring external APIs or cloud services. Its key capabilities include cross-file toxic flow analysis, NLP-based configuration scanning, and an aggregate risk scoring system, ensuring comprehensive threat detection and mitigation.

## What's Changed

**Aguara moved from checking "npm/Python" to checking the real dependency surface of a modern repo with a single command.**

v0.17.0 adds offline malicious-package checks across npm, PyPI, Go, Rust, PHP/Composer, Ruby/Bundler, Java/Maven/Gradle, and .NET/NuGet. `aguara check .` from a repo root walks every supported lockfile recursively, matches every declared package against an embedded threat-intel snapshot built from [OSV.dev](https://osv.dev) and [OpenSSF Malicious Packages](https://github.com/ossf/malicious-packages), and reports one entry per discovered manifest in JSON / SARIF / terminal output.

This is the largest supply-chain expansion since Aguara shipped. It's also intentionally narrow: v0.17 catches **malicious-package** signals (MAL- advisories + OSSF origin records). General CVE / version-range vulnerability matching is the next layer — tracked at [#105](https://github.com/garagon/aguara/issues/105).

## What changed for you

```bash
# Run from any repo root. Aguara discovers what's there.
aguara check .

# Constrain to specific ecosystems (repeatable or comma-separated).
aguara check --ecosystem go,ruby
aguara check --ecosystem maven --ecosystem nuget

# Aliases work: rust, golang, java, dotnet, csharp, gem, php, ...
aguara check --ecosystem rust

# --fresh refreshes ONLY the ecosystems the plan touches.
aguara check --fresh --ecosystem maven   # pulls Maven only, not all 8.

# Audit composes check + scan into one verdict, same recursive surface.
aguara audit --ci .

# Refresh the local snapshot for every supported ecosystem.
aguara update
```

## Coverage today

| Ecosystem | Evidence read | Coverage |
|---|---|---|
| npm | `node_modules` (incl. pnpm `.pnpm` store) | Strong embedded malicious-package coverage |
| PyPI | `site-packages`, `.pth`, pip/uv/npx caches | Strong embedded malicious-package + persistence coverage |
| RubyGems | `Gemfile.lock` | Strong embedded malicious-package coverage |
| NuGet | `packages.lock.json`, `*.csproj`/`*.fsproj`/`*.vbproj` | Strong embedded exact-version coverage |
| Go | `go.sum`, `go.mod` | Parser ready; OSV Go data is range-shaped, embedded matches limited today |
| crates.io | `Cargo.lock` (public registry only) | Parser ready; range-aware OSV matching deferred |
| Packagist | `composer.lock` | Parser ready; range-aware OSV matching deferred |
| Maven | `pom.xml`, `gradle.lockfile`, `gradle/dependency-locks/*` | Parser ready; range-aware OSV matching deferred |

Aguara is not claiming to be a full SCA vulnerability scanner. v0.17 ships the offline malicious-package layer across these ecosystems. Range-aware OSV matching unlocks the bottom four tiers from "parser ready" to "strong" — it's the explicit next milestone.

## Install / upgrade

```bash
# install.sh (verifies checksum + cosign-signed checksums.txt)
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.17.0 sh

# Homebrew
brew upgrade garagon/tap/aguara

# Docker (multi-arch linux/amd64+arm64, signed at digest)
docker pull ghcr.io/garagon/aguara:0.17.0

# GitHub Action — pin both the action ref AND the binary version
- uses: garagon/aguara@v0.17.0
  with:
    version: v0.17.0
```

`go install` is intentionally NOT listed as an upgrade path. It reports `aguara dev (commit: none)` and bypasses the signed-archive provenance chain. Use install.sh, Homebrew, Docker, or the GitHub Action.

## Provenance

- GoReleaser archives signed via Cosign keyless (OIDC). `checksums.txt.bundle` carries the signature.
- SPDX SBOM per archive (`*.sbom.json`).
- Docker image signed at digest with Cosign + SLSA provenance + SBOM attestations.
- `-trimpath` reproducible builds.

## Verify (recommended after install)

```bash
cosign verify-blob \
  --bundle aguara_0.17.0_<os>_<arch>.tar.gz.intoto.jsonl \
  --certificate-identity-regexp 'https://github\.com/garagon/aguara/.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com' \
  aguara_0.17.0_<os>_<arch>.tar.gz

cosign verify ghcr.io/garagon/aguara:0.17.0 \
  --certificate-identity-regexp 'https://github\.com/garagon/aguara/.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com'
```

`verify-release.sh` ran 6/6 on darwin/arm64 for this tag (cosign blob, sha256, binary version, cosign image, native pull, SBOM + SLSA provenance).

## Compatibility

- 193 detection rules (unchanged from v0.16.x).
- 219 rules reported by `aguara list-rules` (193 YAML + 26 analyzer-emitted catalog entries).
- Embedded threat-intel snapshot grows from ~21.5k records (v0.16) to **23,926** records across 8 OSV ecosystems.
- JSON consumers get a new optional `ecosystems[]` array on `aguara check` / `aguara audit` output. Top-level `findings[]` stays flat for compatibility.
- No CLI flag breaking changes. `--ecosystem` accepts a single value as before, and now also accepts repeated / comma-separated values.

<details>
<summary>Full changelog (auto-generated)</summary>

* fix(redaction): redact sensitive non-credential findings before output by @garagon in https://github.com/garagon/aguara/pull/97
* feat(intel): measure-intel tool + OSV bucket sizing for v0.17.0 by @garagon in https://github.com/garagon/aguara/pull/100
* feat(intel): ecosystem registry + alias map for 8 ecosystems by @garagon in https://github.com/garagon/aguara/pull/101
* feat(packagecheck): Go ecosystem + ecosystems[] in CheckResult by @garagon in https://github.com/garagon/aguara/pull/102
* feat(packagecheck): Cargo + Composer + RubyGems parsers by @garagon in https://github.com/garagon/aguara/pull/103
* feat(packagecheck): Maven + NuGet parsers by @garagon in https://github.com/garagon/aguara/pull/104
* feat(check): recursive multi-ecosystem autodetect and v0.17 docs by @garagon in https://github.com/garagon/aguara/pull/106
* release: v0.17.0 by @garagon in https://github.com/garagon/aguara/pull/107

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.16.2...v0.17.0

</details>

