---
title: Totem Shield
date: 2026-04-21 06:28:41 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.15.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.15.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide a persistent, cross-repository memory and enforcement layer for AI coding agents. It automates the process of converting lessons learned from past mistakes into enforceable rules, preventing recurring architectural errors and ensuring code consistency without relying on live LLMs. By using deterministic, offline linting, Totem enhances the reliability and efficiency of AI-assisted development workflows.

## What's Changed

### Minor Changes

-   f9c287b: 1.15.0 ships Pack Distribution: the first shippable Totem pack, plus the compile-hardening and zero-trust substrate that makes packs safe to distribute.

    ## Pack Distribution

    -   `@totem/pack-agent-security` (ADR-089 flagship pack). 5 immutable security rules covering unauthorized process spawning, dynamic code evaluation with non-literal arguments, network exfiltration via hardcoded IPs or suspicious domains (API + shell-string variants), and obfuscated string assembly via byte-level primitives. Every rule ships `immutable: true` + `severity: error` + `category: security` with bad/good fixture pairs and 57 unit tests.
    -   `totem install pack/<name>` command installs a published pack into the local manifest.
    -   `pack-merge` primitive refuses downgrade of immutable rules to warning or archived; bypass attempts log to the Trap Ledger.
    -   Content-hash substrate across TypeScript and bash (review + sync + pre-push hook) so pack integrity verifies without relying on file timestamps.

    ## Zero-trust default (ADR-089)

    -   Pipeline 2 and Pipeline 3 LLM-generated rules now ship `unverified: true` unconditionally. Activation via the atomic `totem rule promote <hash>` CLI or the ADR-091 Stage 4 Codebase Verifier in 1.16.0.
    -   Pipeline 1 (manual) keeps its conditional semantics; human-authored rules are self-evidencing.

    ## Compile hardening (ADR-088 Phase 1)

    -   Layer 3 verify-retry loop: rules that fail their own smoke test re-prompt once before the compiler rejects them.
    -   Compile-time smoke gate runs both `badExample` and `goodExample`; rules that fire on both directions are rejected with reason code `matches-good-example` (closes the over-matching hole that drove the 2026-04-18 security-pack 10-of-10 archive rate).
    -   `archivedAt` timestamp preserved across schema round-trips so the institutional first-archive-provenance ledger survives every compile cycle.
    -   `unverified` flag and `nonCompilable` 4-tuple with 9-value reason-code enum replaces the opaque 2-tuples.
    -   `totem doctor` stale-rule advisory (ADR-088 Phase 1) plus the grandfathered-rule advisory that surfaces the pre-zero-trust cohort categorized by `vintage-pre-1.13.0`, `no-badExample`, and `no-goodExample`.

    ## Platform

    -   Compound ast-grep rules (ADR-087, promoted from Proposal 226). `astGrepYamlRule` field on `CompiledRule` with mutual exclusion on `astGrepPattern`, structural combinators (all / any / not / inside / has / precedes / follows), and canonical-serialization hashing via `canonicalStringify`.
    -   Windows shell-injection fix in `safeExec` via `cross-spawn.sync` (closes a three-week-latent vector).
    -   Cross-Repo Context Mesh (`totem search` federation + `totem doctor` Linked Indexes health check).
    -   Standalone binary distribution unblocked (darwin-arm64, linux-x64, win32-x64).

    ## Positioning

    -   **ADR-090 (Multi-Agent State Substrate).** Scopes Totem as the shared state, enforcement, and audit substrate for multi-agent development. Totem does not own agent routing, capability negotiation, session lifecycle, or live-edit conflict resolution. Future feature admission passes the Scope Decision Test.
    -   **ADR-091 (Ingestion Pipeline Refinements).** Redefines the 1.16.0 ingestion pipeline as a 5-stage funnel: Extract → Classify → Compile → Verify-Against-Codebase → Activate. Renames the legacy `allowlist` terminology to `baseline`.
    -   **ADR-085 (Pack Ecosystem).** Accepted with five deferred decisions resolved: Behavioral SemVer with refinement classification, array-order precedence plus `totem doctor` shadowing warning, Local Supreme Authority with ADR-089 immutable-severity carve-out, Sigstore + in-toto signing, native npm lifecycle with 72-hour unpublish constraint.

    Detailed patch-level changes: CHANGELOG.md entries 1.14.1 through 1.14.17.

### Patch Changes

-   Updated dependencies [f9c287b]
    -   @mmnto/totem@1.15.0

