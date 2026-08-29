---
title: Graceful Boundaries Conformance Check
date: 2026-08-29 01:43:02 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/graceful-boundaries
marketplace: https://github.com/marketplace/actions/graceful-boundaries-conformance-check
version: v1.5.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Graceful Boundaries is an open specification that grades API responses based on their conformance to a set of standards. It provides proactive discovery, structured refusal, and constructive guidance to help autonomous agents understand and act on operational limits efficiently. The action automates the process of checking response codes and providing actionable feedback for improving API reliability.
---


Version updated for **https://github.com/snapsynapse/graceful-boundaries** to version **v1.5.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graceful-boundaries-conformance-check) to find the latest changes.

## Action Summary

Graceful Boundaries is an open specification that grades API responses based on their conformance to a set of standards. It provides proactive discovery, structured refusal, and constructive guidance to help autonomous agents understand and act on operational limits efficiently. The action automates the process of checking response codes and providing actionable feedback for improving API reliability.

## What's Changed

# Graceful Boundaries 1.5.4

Graceful Boundaries 1.5.4 is a maintenance and adoption-tooling release. It does not change the normative conformance levels, required fields, or response classes.

## Highlights

- The checker now reports the single smallest change that raises a service's confirmed conformance level, with matching human-readable and JSON output.
- The README leads with the dependency-free `npx` check and CI integration, includes verified Level 4 output, and makes RFC 9457 compatibility visible at the first specification mention.
- Adopter registration now starts with a URL-only issue. Validation remains evidence-led, and unanswered directory proposals remain gated on maintainer confirmation.
- The RFC 9457 profile, comparative caller benchmark protocol, roadmap, conformance counts, and root-skill layout records are reconciled with current repository behavior.
- `SECURITY-AUDIT.md` adds concrete safer and unsafe examples for SC-2 through SC-6.
- The published limits schema no longer reserves the roadmap-only `agentCapable` field.
- ClawHub preparation now produces a deterministic three-file audit-only package from `build/clawhub-graceful-boundaries/`; repository-root packaging fails closed to `SKILL.md`, and the card reflects the repository's actual license split.

## Verification

- 270 offline tests pass.
- The offline search contract passes with zero defects.
- The npm tarball installs in a clean consumer directory and its installed CLI confirms https://siteline.to/ at Level 4.
- The generated ClawHub bundle contains only `SKILL.md`, `MANIFEST.yaml`, and `skill-card.md`.

Full details are in `CHANGELOG.md`.

