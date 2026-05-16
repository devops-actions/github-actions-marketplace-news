---
title: Aguara Security Scanner
date: 2026-05-16 21:27:30 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.16.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.16.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanning GitHub Action designed to detect vulnerabilities in AI agent skills and MCP (multi-capability provider) servers before deployment. It automates the identification of risks such as prompt injection, data exfiltration, supply-chain attacks, and malicious package threats using static analysis and various detection methods, including pattern matching, NLP analysis, and toxic flow detection. Key capabilities include comprehensive threat detection across multiple categories, automatic decoding of obfuscated payloads, context-aware scanning, and aggregate risk scoring, all without requiring cloud services or external API keys.

## What's Changed

Aguara v0.16.2 is a **security patch release**. It closes the P1 secret-leak found in the v0.16.1 final security audit: findings outside `category: credential-leak` (MCP_007, NLP_CRED_EXFIL_COMBO, toxic-flow cred-bound pairs, selected exfiltration / supply-chain exfil rules) could copy raw secrets into JSON `matched_text`, terminal output, Markdown, and SARIF `message.text`. The fix introduces sensitivity-based redaction and keeps the legacy `credential-leak` fallback for custom rules.

If you upload SARIF to GitHub Code Scanning or pipe scan JSON into CI logs, upgrading to v0.16.2 is the safe default. `--no-redact` / `WithRedaction(false)` remain the explicit raw-output escape hatch.

## What's fixed

- `MCP_007` (`mcp-attack`), `NLP_CRED_EXFIL_COMBO` (`exfiltration`), `TOXIC_001/002`, `TOXIC_CROSS_001/002`, and selected `EXFIL_*` / `SC-EX-*` rules now scrub `matched_text` and matching context before output.
- Cross-finding context bleed: a non-sensitive finding whose context window overlaps a sensitive sibling's match line no longer serializes that line raw.
- Dedup-survivor leak: when a non-sensitive finding outranks a sensitive one on the same line at dedup time, the survivor inherits the redaction obligation.

## API surface

- `types.Finding` gains optional `Sensitive bool` (emitted as `"sensitive"` in JSON only when true).
- `types.RedactCredentialFindings` → renamed to `RedactSensitiveFindings`. The old name is kept as a deprecated alias so library consumers keep compiling.
- YAML rules can opt in via `sensitive: true`. Backward compatible: rules with `category: credential-leak` and no `sensitive` field still redact.

## Known follow-ups (deferred to v0.16.3)

- `match_mode: all` rules whose secondary pattern hit lands more than ~3 lines from the anchor: that line is outside the recorded sensitive set. Needs `Finding.MatchedLines []int` plumbing.
- Sensitive findings dropped by the `--severity` filter before redaction can leave their secret lines unmarked in surviving findings' context windows. Needs to collect sensitive lines inside `scanner.postProcess` before the severity filter.

## Install / upgrade

```bash
# install.sh (verifies checksum + cosign-signed checksums.txt)
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.16.2 sh

# Homebrew
brew upgrade garagon/tap/aguara

# Docker (multi-arch linux/amd64+arm64, signed at digest)
docker pull ghcr.io/garagon/aguara:0.16.2

# GitHub Action — pin both the action ref AND the binary version
- uses: garagon/aguara@v0.16.2
  with:
    version: v0.16.2
```

`go install` is intentionally NOT listed here as an upgrade path. It reports `aguara dev (commit: none)` and bypasses the signed-archive provenance chain. Use install.sh, Homebrew, or Docker.

## Provenance

- GoReleaser archives signed via Cosign keyless (OIDC). `checksums.txt.bundle` contains the signature.
- SPDX SBOM per archive (`*.sbom.json`).
- Docker image signed at digest with Cosign + SLSA provenance attestation + SBOM attestation.
- `-trimpath` reproducible builds.

## Verify (recommended after install)

```bash
# Archive
cosign verify-blob \
  --bundle aguara_0.16.2_<os>_<arch>.tar.gz.intoto.jsonl \
  --certificate-identity-regexp 'https://github\.com/garagon/aguara/.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com' \
  aguara_0.16.2_<os>_<arch>.tar.gz

# Docker image
cosign verify ghcr.io/garagon/aguara:0.16.2 \
  --certificate-identity-regexp 'https://github\.com/garagon/aguara/.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com'
```

The release workflow's own `verify-release.sh` runs all six provenance checks (cosign blob, sha256, binary version, cosign image, native pull, SBOM + SLSA provenance) and passed 6/6 on darwin/arm64 for this tag.

## Compatibility

- 193 detection rules across 13 categories.
- 219 rules reported by `aguara list-rules` (193 YAML + 26 analyzer-emitted catalog entries, unchanged from v0.16.1).
- Minimum supported Go for `go install`: 1.25.
- No CLI flag or output-shape breaking changes. JSON consumers will see a new optional `"sensitive": true` field on a subset of findings.

<details>
<summary>Full changelog (auto-generated)</summary>

* fix(redaction): redact sensitive non-credential findings before output by @garagon in https://github.com/garagon/aguara/pull/97
* release: v0.16.2 by @garagon in https://github.com/garagon/aguara/pull/98

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.16.1...v0.16.2

</details>

