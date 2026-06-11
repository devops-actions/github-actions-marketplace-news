---
title: Aguara Security Scanner
date: 2026-06-11 07:28:56 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.24.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.24.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## What's Changed

Aguara v0.24.0 extends the trust layer in both directions: what an AI agent is about to obey, and what a package manager is about to install. A cloned repo's Claude Code settings, agent instruction files, and pnpm policy are now vetted before any of them take effect, and Bun and Yarn Berry lockfiles join the pre-install parsers so every major npm-family lockfile can be checked before a single install script runs. Everything stays deterministic and offline during scans: no package execution, no scan-time network calls.

**New: agent-policy analyzer (`agent-trust` category)**
Reads a repo's `.claude/settings.json` / `settings.local.json` and flags Claude Code configuration that is dangerous to inherit from a clone, with 8 new rules:
- `AGENTCFG_HOOK_FETCH_EXEC_001` (CRITICAL) - a hook downloads and runs remote code on session open
- `AGENTCFG_ENV_EXEC_001` / `AGENTCFG_BYPASS_PERMS_001` (HIGH) - code-injection env vars; `bypassPermissions` as the project default
- `AGENTCFG_MCP_AUTOAPPROVE_001`, `AGENTCFG_BROAD_ALLOW_001`, `AGENTCFG_SECRET_READ_ALLOW_001`, `AGENTCFG_HELPER_REPO_SCRIPT_001` (MEDIUM) - MCP auto-approval, blanket or secret-path allow rules, repo-shipped credential helpers
- `AGENTCFG_PERMS_WEAK_MODE_001` (LOW) - `acceptEdits` shipped as a project default

**New: pnpm-policy analyzer**
Reads `pnpm-workspace.yaml` and flags supply-chain settings weakened below the pnpm v11 defaults, with 9 new rules: `dangerouslyAllowAllBuilds` (HIGH); strict build approval disabled, exotic subdeps allowed, `trustLockfile`, pending build approvals (MEDIUM); release-age window and trust policy weakened (LOW); legacy v10 build keys (INFO). A missing setting never fires.

**More pre-install lockfile coverage**
`aguara check` / `aguara audit` now parse `bun.lock` and Yarn Berry (v2+) `yarn.lock`, joining pnpm-lock.yaml, package-lock.json, and classic yarn.lock. All npm-family parsers resolve `npm:` aliases to the real registry package, so a compromised package cannot hide behind a local alias.

**Agent instruction files as a high-trust prompt surface**
`.cursorrules`, `.windsurfrules`, `.clinerules`, `AGENTS.md`, and `copilot-instructions.md` are scanned for prompt injection even without a `.md` extension, and findings in them are weighted up rather than treated as documentation.

```bash
# vet a cloned repo before trusting it: agent settings, instruction files, pnpm posture
aguara scan .

# check lockfiles for known-compromised packages before install (now incl. bun.lock and Yarn Berry)
aguara check .

# one verdict for CI
aguara audit . --ci

# explain any new detection
aguara explain AGENTCFG_HOOK_FETCH_EXEC_001
```

**Provenance.** Release archives are signed with Cosign (keyless) and ship an SPDX SBOM per archive. The Docker image is signed at digest with Cosign and carries SBOM + SLSA provenance attestations.
- Multi-arch image: `ghcr.io/garagon/aguara:0.24.0@sha256:9d93512f14ed069fbefd0203e88cec0e1f9dd26ea9050d046f232c11dde3a870` (`linux/amd64` + `linux/arm64`)

**Install / upgrade**
```bash
# install.sh (checksum-verified)
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.24.0 sh

# Homebrew
brew upgrade aguara

# Docker
docker pull ghcr.io/garagon/aguara:0.24.0

# GitHub Action
# uses: garagon/aguara@v0.24.0
```

**Compatibility.** No breaking changes. Existing rule IDs, severities, the `Severity` JSON encoding, and the Go library API are unchanged. The catalog is now 193 YAML rules plus 51 analyzer-emitted detections (244 cataloged) across 11 scan analyzers.

**Verify**
```bash
# verify the signed checksums, then the archive against them
cosign verify-blob --bundle checksums.txt.bundle checksums.txt

# verify the image signature at digest
cosign verify ghcr.io/garagon/aguara@sha256:9d93512f14ed069fbefd0203e88cec0e1f9dd26ea9050d046f232c11dde3a870 \
  --certificate-identity-regexp 'https://github.com/garagon/aguara' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com
```

<details>
<summary>CHANGELOG</summary>

## [0.24.0] - 2026-06-10

Extends Aguara's trust layer in both directions: what an AI agent is
about to obey, and what a package manager is about to install. On the
agent side, a cloned repo's Claude Code settings are now vetted before
their hooks and helpers run, and agent instruction files like
`.cursorrules` and `AGENTS.md` are treated as the high-trust prompt
surfaces they are. On the package side, pnpm projects are checked for
weakened supply-chain policy, and Bun and Yarn Berry lockfiles join the
pre-install parsers, so every major npm-family lockfile can now be
audited before a single install script runs. The rule catalog grows to
244 cataloged detections (193 YAML + 51 analyzer-emitted) and gains an
`agent-trust` category. Everything stays deterministic and offline:
no package execution, no network calls during a scan. Existing rule
IDs, severities, and the `Severity` JSON encoding are unchanged.

### Added

- **agent-policy analyzer** (`internal/engine/agentpolicy/`). A cloned
  repo can ship a `.claude/settings.json` that Claude Code loads when
  the workspace is trusted; from then on its hooks and credential
  helpers run automatically. The new analyzer reads
  `.claude/settings.json` / `settings.local.json` and flags host
  configuration that is dangerous to inherit from someone else's repo,
  with eight new rules in the new `agent-trust` category:
  - `AGENTCFG_HOOK_FETCH_EXEC_001` (CRITICAL): a hook command downloads
    and runs remote code (`curl | sh`, `eval $(curl ...)`), executed
    automatically when a session opens in the repo.
  - `AGENTCFG_ENV_EXEC_001` (HIGH): the `env` block sets a
    code-execution variable (`NODE_OPTIONS --require`, `LD_PRELOAD`,
    `BASH_ENV`, and similar).
  - `AGENTCFG_BYPASS_PERMS_001` (HIGH): `permissions.defaultMode` is
    `bypassPermissions`, weakening tool approval for the workspace.
  - `AGENTCFG_MCP_AUTOAPPROVE_001` (MEDIUM):
    `enableAllProjectMcpServers: true` auto-loads every `.mcp.json`
    server.
  - `AGENTCFG_BROAD_ALLOW_001` (MEDIUM): a blanket or dangerous
    `permissions.allow` rule (`Bash(*)`, `Bash(curl *)`).
  - `AGENTCFG_SECRET_READ_ALLOW_001` (MEDIUM): an allow rule over a
    secret path (`.env`, `~/.ssh`, `~/.aws`, private keys).
  - `AGENTCFG_HELPER_REPO_SCRIPT_001` (MEDIUM): a credential helper
    (`apiKeyHelper`, `awsAuthRefresh`) runs a repo-shipped script.
  - `AGENTCFG_PERMS_WEAK_MODE_001` (LOW): `defaultMode` is `acceptEdits`
    shipped as a project default.

  A missing setting is treated as the secure default and never fires;
  the analyzer judges the dangerous shape of a value, not the presence
  of hooks or permissions. Claude Code is the first agent-policy
  surface; the same posture applies to other agent host configs.

- **Agent instruction files treated as a high-trust prompt surface.**
  Files agentic coding tools load as persistent context --
  `.cursorrules`, `.windsurfrules`, `.clinerules`, `AGENTS.md`, and
  `copilot-instructions.md` -- are now run through the prompt-injection
  (NLP) analyzer even when they have no `.md` extension, and a finding
  in one is weighted up rather than getting the documentation penalty a
  README receives. An injected directive in these files is closer to
  the agent's operating instructions than to prose, so the same payload
  scores higher here. The directory-scoped Cursor and Windsurf rule
  formats (`.cursor/rules/*.mdc`, `.windsurf/rules/*`) and pattern-rule
  coverage of the extensionless files are a follow-up. `CLAUDE.md` is
  intentionally left out for now: it is so widely used for legitimate
  project instructions that flagging it needs a dedicated
  false-positive pass first.

- **pnpm-policy analyzer** (`internal/engine/pnpmpolicy/`). pnpm v11
  ships real supply-chain controls -- build-script approval, a release
  age window, exotic-source blocking -- but a single
  `pnpm-workspace.yaml` line can quietly turn them off. The new
  analyzer reads `pnpm-workspace.yaml` and flags settings weakened
  below the v11 defaults, with nine new rules (all category
  `supply-chain`):
  - `PNPM_DANGEROUS_BUILDS_001` (HIGH): `dangerouslyAllowAllBuilds: true`
    lets every dependency run install-time lifecycle scripts without
    approval.
  - `PNPM_STRICT_DEP_BUILDS_DISABLED_001` (MEDIUM): `strictDepBuilds:
    false` downgrades unapproved build scripts from a failure to a
    warning.
  - `PNPM_EXOTIC_SUBDEPS_DISABLED_001` (MEDIUM): `blockExoticSubdeps:
    false` lets transitive deps resolve from git/tarball URLs.
  - `PNPM_TRUST_LOCKFILE_001` (MEDIUM): `trustLockfile: true` skips
    supply-chain verification for lockfile entries.
  - `PNPM_BUILD_APPROVAL_PENDING_001` (MEDIUM): an `allowBuilds` entry
    left undecided means a build script is still pending review.
  - `PNPM_MIN_RELEASE_AGE_DISABLED_001` / `_NON_STRICT_001` (LOW): the
    release-age window is disabled or not strictly enforced.
  - `PNPM_TRUST_POLICY_OFF_001` (LOW): `trustPolicy: off` set
    explicitly.
  - `PNPM_LEGACY_BUILD_POLICY_001` (INFO): pnpm v10 build settings that
    v11 no longer honors (migrate to `allowBuilds`).

  A missing setting is treated as the secure v11 default and never
  fires. Only the exact camelCase keys pnpm honors in
  `pnpm-workspace.yaml` match (verified against pnpm 11.5.2: a
  kebab-case key there is silently ignored by pnpm, so flagging it
  would be a false positive). YAML merge keys (`<<:`) are expanded, and
  each finding points at the exact line.

- **bun.lock and yarn Berry lockfile parsing** (`aguara check` /
  `aguara audit`). A freshly cloned Bun or Yarn v2+ project can now be
  audited before install: `bun.lock` (the text lockfile) and `yarn.lock`
  Berry (v2+) join the existing `pnpm-lock.yaml` / `package-lock.json` /
  classic `yarn.lock` parsers. Both resolve `npm:` aliases to the real
  registry package -- Bun records it as the resolved first element, Berry
  as the `resolution:` field -- so a compromised package cannot hide
  behind a local alias. Conservative, like the other npm parsers: only
  exact registry tuples are emitted; git/file/workspace/patch sources and
  ranges are skipped, and results dedupe on (name, version). A Berry
  lockfile previously errored out as unsupported; it is now parsed.
  The legacy binary `bun.lockb` is not parsed (it cannot be read without
  running Bun); a repo whose only lockfile is `bun.lockb` fails with a
  clear message to commit the text `bun.lock` instead, rather than
  passing as audited with zero packages read.

- **`npm:` alias resolution in `pnpm-lock.yaml`** (`aguara check` /
  `aguara audit`). An alias-shaped lockfile entry such as
  `safe-ipc@npm:node-ipc@9.2.3` now matches advisories for the real
  registry package (`node-ipc@9.2.3`), never the local alias name.
  pnpm itself normalizes aliased installs to real-name lockfile keys
  (verified on pnpm 8/10/11), so this is hardening for hand-edited or
  poisoned lockfiles and historical shapes rather than a gap in normal
  installs. Unscoped and scoped aliases, scoped real targets,
  leading-slash and peer-decorated keys are handled. Only unambiguous
  aliases with an exact pinned version resolve; ranges, dist-tags,
  malformed specs, and non-registry sources (`workspace:` / `file:` /
  `link:` / `github:` / `git:` / `http(s):` / `jsr:`) are skipped, and
  alias + direct entries for the same package dedup to one finding.


</details>

