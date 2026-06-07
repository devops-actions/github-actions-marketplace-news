---
title: Aguara Security Scanner
date: 2026-06-07 14:58:53 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.23.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.23.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## What's Changed

Aguara v0.23.0 expands offline coverage of supply-chain behavioral attack chains, informed by the Red Hat / Miasma npm worm. Six new detections span the chain from install-time execution to destructive cleanup. Everything stays deterministic and offline during scans: no package execution, no scan-time network calls.

**New behavioral detections**
- `SUPPLY_026` - npm lifecycle scripts that run local JavaScript
- `JS_BUN_SECOND_STAGE_001` - Node-to-Bun second-stage execution
- `JS_GITHUB_C2_001` - GitHub used as a payload or command channel
- `JS_SUDOERS_TAMPER_001` - sudoers privilege tampering
- `JS_HOST_TRUST_TAMPER_001` - host trust surface tampering (linker preload, CA stores, sshd_config, profile, resolver)
- `JS_WIPER_TRIPWIRE_001` - destructive wipe of credential stores, agent trust files, history, or the home directory

Also: advisory intel freshness is now visible in `check` / `audit` / `status` (with `age_days` and a real `stale` flag in JSON), and the jsrisk analyzer is about 8% faster from a single shared comment/string/regex mask.

```bash
# scan agent skills, MCP servers, or package code
aguara scan ./path

# audit dependencies + project content against offline rules and advisory intel
aguara audit --path .

# explain or disable any of the new detections
aguara explain JS_WIPER_TRIPWIRE_001
```

**Provenance.** Release archives are signed with Cosign (keyless) and ship an SPDX SBOM per archive. The Docker image is signed at digest with Cosign and carries SBOM + SLSA provenance attestations.
- Multi-arch image: `ghcr.io/garagon/aguara:0.23.0@sha256:e78f825d119b16224dbc84d6c8c7a7cdb9ec326a0b0a17796025dae5a91673a2` (`linux/amd64` + `linux/arm64`)

**Install / upgrade**
```bash
# install.sh (checksum-verified)
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.23.0 sh

# Homebrew
brew upgrade aguara

# Docker
docker pull ghcr.io/garagon/aguara:0.23.0

# GitHub Action
# uses: garagon/aguara@v0.23.0
```

**Compatibility.** No breaking changes. Existing rule IDs, severities, the `Severity` JSON encoding, and the Go library API are unchanged. The catalog is now 193 YAML rules plus 34 analyzer-emitted detections (227 cataloged).

**Verify**
```bash
# verify the signed checksums, then the archive against them
cosign verify-blob --bundle checksums.txt.bundle checksums.txt

# verify the image signature at digest
cosign verify ghcr.io/garagon/aguara@sha256:e78f825d119b16224dbc84d6c8c7a7cdb9ec326a0b0a17796025dae5a91673a2 \
  --certificate-identity-regexp 'https://github.com/garagon/aguara' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com
```

<details>
<summary>CHANGELOG</summary>

## [0.23.0] - 2026-06-07

Expands Aguara's offline coverage of supply-chain behavioral attack
chains, informed by the Red Hat / Miasma npm worm. Six new behavioral
detections span the chain from install-time execution through second
stages, repository-as-control channels, host trust tampering, and
destructive cleanup. Intel freshness is now visible in `check` /
`audit` / `status`, and the JavaScript analyzer is faster. Everything
stays deterministic and offline: no package execution, no network calls
during a scan. Existing rule IDs, severities, and the `Severity`
JSON encoding are unchanged.

### Added

- **npm lifecycle scripts that run local JavaScript** (`SUPPLY_026`,
  pkgmeta analyzer). Flags a `package.json` whose install-time lifecycle
  hooks (`preinstall` / `install` / `postinstall` / `prepare` and the
  related pre/post keys) execute a local `.js` / `.cjs` / `.mjs` file,
  `node -e`, or a `bun` stage. This is the entry point of the Miasma
  chain, where a published package runs its own code the moment it is
  installed.
- **Node-to-Bun second-stage execution** (`JS_BUN_SECOND_STAGE_001`,
  jsrisk). Flags package code that shells out to the Bun runtime as a
  second stage and pairs it with a strong supply-chain signal
  (obfuscator-shape payload, CI/cloud secret read, or a network exfil
  sink). Running an ordinary Bun command never fires on its own.
  CRITICAL when a secret read and an exfil sink are both present.
- **Repository used as a payload or command channel**
  (`JS_GITHUB_C2_001`, jsrisk). Flags code that writes or controls
  GitHub-hosted content (a GraphQL write mutation, an Octokit write
  method, or a REST contents / git-data write to `api.github.com`) and
  pairs it with a strong partner that a normal release bot does not
  carry. CRITICAL when a non-GitHub credential is also read.
- **Sudoers privilege tampering** (`JS_SUDOERS_TAMPER_001`, jsrisk).
  Flags a real write to `/etc/sudoers` or `/etc/sudoers.d/*`, whether a
  bound filesystem write or a bound shell redirect / `tee` / `sed -i`.
  CRITICAL when the written content grants passwordless or unrestricted
  sudo. Validation-only (`visudo -c`) and `chmod` without a write do not
  match.
- **Host trust surface tampering** (`JS_HOST_TRUST_TAMPER_001`, jsrisk).
  Flags a write to the dynamic linker preload (`/etc/ld.so.preload`), a
  CA certificate store, the SSH daemon config, the global shell profile,
  or name resolution (`/etc/hosts`, `/etc/resolv.conf`) pointed at a
  sensitive domain.
- **Destructive wipe of sensitive paths** (`JS_WIPER_TRIPWIRE_001`,
  jsrisk). Flags a real deletion of a credential store
  (`.ssh` / `.aws` / `.gnupg` / `.kube` / `.azure` / `.docker` / gcloud),
  agent or editor trust (`.claude` / `CLAUDE.md` / `.cursorrules` /
  `.vscode`), shell history, an evidence log, or a honeytoken, plus a
  broad wipe of `$HOME` / `~` / `/root` / root. Detection is by the
  actual delete capability of the call (a non-recursive `rm`, an
  `unlink`, or a `fs/promises` call that has no such method cannot
  destroy a directory), through a bound `fs` / `fs-extra` / `rimraf`
  delete or a bound shell `rm` / `unlink` / `rmdir` / `find -delete`.
  Build and cache cleanup (`node_modules`, `dist`, `/tmp`) does not
  match. CRITICAL on a broad home or root wipe, on deleting two distinct
  credential stores, or when paired with a strong partner.

This closes the chain end to end: install hook, second stage, control
channel, host tampering, destructive cleanup. Coverage is static and
chain-gated, not a claim of complete worm detection.

### Changed

- **Advisory intel freshness is now visible.** `aguara check`,
  `aguara audit`, and `aguara status` show the age and source of the
  embedded or refreshed advisory intel, and JSON output gains an
  `age_days` field and a real `stale` flag. This is informational only:
  it never changes exit codes, `--fail-on`, or a verdict, and under
  `--ci` the freshness note goes to stderr so stdout stays clean.
- **Faster JavaScript risk analysis.** The jsrisk analyzer now masks
  comments, regex-literal bodies, and string interiors in a single
  shared pass, so code-token signals (network sinks, child-process
  spawns, env reads, obfuscation shape) no longer match inside comments
  or strings. The shared pass is about 8% faster than before with far
  fewer allocations. No rule or severity change.

### Notes

- Rule catalog is now 193 YAML rules plus 34 analyzer-emitted rules
  (227 cataloged) across 9 scan analyzers. The new detections are
  emitted by the existing `pkgmeta` and `jsrisk` analyzers; no new
  analyzer was added.


</details>

