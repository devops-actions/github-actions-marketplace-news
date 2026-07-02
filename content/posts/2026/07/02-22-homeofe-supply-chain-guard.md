---
title: Supply Chain Guard
date: 2026-07-02 22:24:47 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## What's Changed

### v5.5.0 (2026-07-02)
**Community batch: all 8 seeded issues shipped, hardened by an adversarial release gate**

Implements every open issue (#40-#47) in one release. Before tagging, a
4-lens adversarial verification gate reviewed the full diff and BLOCKED the
first candidate with 6 confirmed findings - all fixed here (details below).
35 new tests (1057 total).

- **Open VSX registry support** (#40): `supply-chain-guard vscode <id>
  --registry openvsx` scans extensions from open-vsx.org (VSCodium, Gitpod,
  Theia); marketplace stays the default. Windows fix: scanner temp dirs now
  use os.tmpdir() instead of /tmp.
- **Badge output** (#42): `--format badge` emits Shields.io endpoint JSON.
  The badge derives from the findings summary, mirroring exit-code semantics
  (critical = red, high = orange, medium = yellow, else green).
- **pre-commit hook** (#41): .pre-commit-hooks.yaml + a "prepare" build script
  so git-based installs compile dist/; README documents the
  .pre-commit-config.yaml snippet.
- **CI recipes** (#44, #45, #46): examples/ gains CircleCI, Jenkins, and Azure
  Pipelines gate configs.
- **Official Docker image** (#47): multi-stage Dockerfile (non-root, unzip
  included, installs the locally built tarball of the tagged source) +
  docker.yml publishing multi-arch (amd64/arm64) images to
  ghcr.io/homeofe/supply-chain-guard on every release tag, with provenance and
  SBOM attestations. All workflow actions SHA-pinned and verified upstream.
- **Coverage gate** (#43): vitest v8 coverage with thresholds wired into CI;
  coverage summary uploaded as a build artifact.

Fixed by the verification gate before release (would have shipped broken):
- Docker build died at `npm ci` (the new prepare script ran before
  tsconfig/src existed in the layer) - now --ignore-scripts in the builder.
- Badge severity inversion: one critical finding scored "medium" risk level
  and rendered a YELLOW badge while the CLI exited 2 - badges now mirror the
  gate.
- `prepare: npx tsc` could download and execute the namesquatted "tsc"
  registry package on cold installs - now plain `tsc` (bin-PATH only).
- pre-commit docs pinned rev v5.4.2, a tag that predates the hook file - now
  gate-enforced via check:version-sync.
- CircleCI example used an invalid `when:` key and would not compile.
- The README badge recipe froze the badge green exactly when findings
  appeared (scan exits non-zero, publish step skipped) - now || true +
  if: always().

