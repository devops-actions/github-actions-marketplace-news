---
title: Aguara Security Scanner
date: 2026-04-21 22:01:56 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.14.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.14.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to detect and prevent vulnerabilities in AI agent skills and MCP (Modular Command Platform) servers before deployment. It automates the identification of risks such as prompt injection, data exfiltration, supply-chain attacks, and other threats using advanced static analysis techniques, including pattern matching, NLP analysis, and cross-file toxic flow detection. Key capabilities include support for 189 detection rules, multi-layer analysis, evasion decoding, context-aware scanning, and risk scoring, providing robust protection for AI and MCP environments without requiring external APIs or cloud resources.

## What's Changed

Maintenance release. Bundles one install-reliability fix, four rule calibration tweaks, a noisy update-check message, and a hardening change to the composite action. No engine changes, no rule-count change. There is no CVE, no known exploitation, and no action required beyond upgrading normally.

## Fixed

### Fresh installs of v0.14.0 / v0.14.1 / v0.14.2 were failing

`install.sh` extracted the expected checksum with `grep "$file" checksums.txt | awk '{print $1}'`. After v0.14.0 started shipping per-archive SBOMs, the substring grep also matched the sibling `.sbom.json` line, so `awk '{print $1}'` returned two hashes concatenated. Every install aborted with `checksum mismatch: expected <hash1><hash2>, got <hash1>`. The script was failing **closed** - no one was silently compromised - but nobody could install Aguara fresh.

Fix: exact-filename match on column 2 with awk. Users who already had v0.14.x installed (via Homebrew, `go install`, or a pre-v0.14 `install.sh`) were unaffected.

### Four rule false positives on real-world skill docs

Detection-engineering pass over a 1247-file corpus of real skills caught four regexes firing on legitimate content without any corresponding true-positive loss:

- `PROMPT_INJECTION_004` (Zero-width char obfuscation) fired on a single UTF-8 BOM at file start. Pattern 2 now requires `{2,}` like pattern 1.
- `PROMPT_INJECTION_011` (Jailbreak template) matched `DAN` inside unrelated words - `Enable zone re`**`DAN`**`dancy`, `clippy::pe`**`DAN`**`tic`. Tokens are now anchored with `\b`.
- `UNI_001` (RTL override) fired on U+202D (LRO), which appears in legitimate mixed-direction layout. Narrowed to U+202E (RLO, the actual Trojan Source signal).
- `UNI_006` (Tag characters) had a range that missed U+E0000 (LANGUAGE TAG). Extended to the full Unicode Tag Characters block.

All true-positive coverage preserved. `testdata/malicious/` still produces 98 findings, unchanged.

### `Update available: v0.14.2 → v0.14.2` on every invocation

The ldflag-injected binary version came in as `0.14.2` while the GitHub Releases API returns `v0.14.2`. The equality check compared them as raw strings, so up-to-date binaries kept printing an "update available" line pointing to the same version they were running. Fix: strip the leading `v` on both sides before comparing.

The `tag_name` returned by the GitHub API is now also validated against `^v\d+\.\d+\.\d+$` before being displayed, so a future hijacked release page cannot surface arbitrary text in the user's terminal.

## Changed

### `action.yml` no longer pulls `install.sh` from `main`

The composite action previously fetched `install.sh` directly from the `main` branch on every consumer run. That is a poor supply-chain pattern - a future compromise of the repository's write access would propagate to downstream CI without a release ever being cut, bypassing the Cosign/SBOM/SLSA signing pipeline that covers the tagged path. This is a hardening change, not a response to any observed incident.

The action now resolves the install ref from `inputs.install-script-ref` → `github.action_ref` → a baked-in tag default, rejecting anything that is not a semver tag (`vX.Y.Z`) or a 40-char commit SHA. `@main`, `@v1`, `@<branch>` all fall back to the pinned default and emit a GHA `::warning::`. Consumers who pin `uses: garagon/aguara@v0.14.3` (or any exact tag or SHA) see no behavior change.

`DEFAULT_REF` is bumped to `v0.14.3` so consumers using non-semver refs fall back to this release's fixed `install.sh`.

## Upgrade

- **Homebrew**: `brew update && brew upgrade aguara`
- **go install**: `go install github.com/garagon/aguara/cmd/aguara@v0.14.3`
- **install.sh** (fresh): `curl -fsSL https://raw.githubusercontent.com/garagon/aguara/v0.14.3/install.sh | bash`
- **Docker**: `docker pull ghcr.io/garagon/aguara:0.14.3`
- **GitHub Action**: `uses: garagon/aguara@v0.14.3`

## Verification

Post-release acceptance script passed all 6 checks on `darwin/arm64`: Cosign-signed checksums, archive sha256, extracted binary version, Cosign-signed Docker image, native multi-arch pull, SBOM + SLSA provenance attestations.

Reproduce locally:

```bash
VERSION=v0.14.3 .github/scripts/verify-release.sh
```

## What's Changed

- fix(action): pin install.sh fetch to a tagged ref, never main in #56
- fix(install): exact-filename match in verify_checksum in #56
- fix(rules): tighten regex boundaries on four unicode + jailbreak rules in #57
- fix(update-check): normalize v-prefix + validate tag shape in #58
- release: v0.14.3 in #59

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.14.2...v0.14.3
