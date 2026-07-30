---
title: Setup shp
date: 2026-07-30 14:33:37 +00:00
tags:
  - timbrinded
  - GitHub Actions
draft: false
repo: https://github.com/timbrinded/shapelang
marketplace: https://github.com/marketplace/actions/setup-shp
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Shape is a typed architecture conformance language that helps developers ensure their application architecture aligns with the declared model in `.shape` files. The tool checks for coherence, catches append-only resource protection violations, and ensures proper grants are granted for function effects. It also detects changes to governed source paths without updates or attestation, and provides refactor constraints to prevent certain operations.
---


Version updated for **https://github.com/timbrinded/shapelang** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-shp) to find the latest changes.

## Action Summary

Shape is a typed architecture conformance language that helps developers ensure their application architecture aligns with the declared model in `.shape` files. The tool checks for coherence, catches append-only resource protection violations, and ensures proper grants are granted for function effects. It also detects changes to governed source paths without updates or attestation, and provides refactor constraints to prevent certain operations.

## What's Changed

# Shape v0.7.0

Shape v0.7.0 is the first coordinated CLI-and-plugin release since v0.4.1. It
substantially expands architecture checking, authoring, editor support,
source-analysis hints, and the downstream agent workflows that use Shape.

## Highlights

- Add forbidden multi-hop path rules over selected relation kinds, alongside
  deterministic witness diagnostics.
- Add source-controlled domain packs with normal module resolution and
  default-discovery semantics.
- Add draft validation with `--allow-unknown-effects`; every unrelated
  diagnostic remains blocking and strict `shp check` remains the final gate.
- Add provider-neutral PR-diff authoring and critic prompt modes.
- Add a stdio Language Server Protocol implementation with diagnostics, hover,
  definitions, completions, and formatting.
- Add incremental checker support and transactional change lowering.
- Deepen analyzer coverage for SQL, Kysely, Prisma, and Drizzle, including
  inferred target comparison and stable source anchors.
- Stabilize authored and generated source/evidence references around
  `file#symbol` and file-only forms rather than line coordinates.
- Add generated AST freshness, offline native parser assets, deterministic
  module naming, and stronger semantic anchors.

## Shape plugin

The coordinated `0.7.0` plugin ships five reviewed skills:

- `shape-lang`
- `shape-contract-preflight`
- `shape-contract-guard`
- `shape-index`
- `shape-review`

Their guidance now covers current explicit graph commands, draft-to-strict
validation, forbidden paths, domain packs, stable references, provider-neutral
author/critic workflows, LSP use, and the boundary between generated navigation
evidence and authored architecture contract.

Release candidates now run blocking static conformance and focused behavioral
cases across all five skills, then pause at a protected manual approval
environment before an official release tag is allowed.

## Tooling and documentation

- Add focused Claude-backed contract review, Guard, and Shape Index CI jobs with
  schema-validated results and deterministic prefilters.
- Add Rust/WASM semantic-kernel and Datalog rule-engine experiments without
  changing the TypeScript checker’s current product boundary.
- Rework the documentation site and its generated explanatory diagrams.
- Expand CLI, domain-pack, analyzer, editor, rule, diagnostics, and architecture
  documentation.

## Distribution

The release publishes Linux x64, Linux ARM64, macOS ARM64, and Windows x64
archives, release-specific installer scripts, and SHA-256 checksums. The setup
action is verified against the published release on Linux and Windows.

