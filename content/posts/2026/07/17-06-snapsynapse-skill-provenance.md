---
title: Skill Provenance Validate
date: 2026-07-17 06:43:59 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/skill-provenance
marketplace: https://github.com/marketplace/actions/skill-provenance-validate
version: v5.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The action ensures that agent skills across local folders, registries, and platform uploads maintain their integrity by recording version information and hash-based integrity verification inside the bundle. This helps teams verify version identity, detect staleness, and ensure no accidental drift during transitions.
---


Version updated for **https://github.com/snapsynapse/skill-provenance** to version **v5.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-provenance-validate) to find the latest changes.

## Action Summary

The action ensures that agent skills across local folders, registries, and platform uploads maintain their integrity by recording version information and hash-based integrity verification inside the bundle. This helps teams verify version identity, detect staleness, and ensure no accidental drift during transitions.

## What's Changed

## validated_against: release-bound attestation records

MANIFEST.yaml now takes an optional `validated_against` block. Each entry binds a validation event — harness, model, date, result, method — to the **exact `bundle_version` it validated**:

```yaml
validated_against:
  - bundle_version: 5.1.0
    harness: Anthropic Claude Code
    model: claude-fable-5
    date: 2026-07-16
    result: pass
```

This is a different claim from `compatibility.tested_on` (design-time compatibility, not bound to a release) and a different concern from `hash` (integrity). An attestation for 5.0.0 says nothing about 5.1.0, and the tooling treats it that way.

`validate.sh` reports attestation after the hash results — entries matching the current bundle version, or a stale flag when none match — and **never changes its exit code over attestation state**. That is the design rule this release encodes: integrity gates, attestation informs. The same pinned bytes can behave differently as harnesses and models move, so a stale attestation means re-validate, not reject.

### Also in this release

- 2 new core evals covering attestation reporting and stale-attestation semantics (35 core / 52 total)
- Regression tests asserting attestation state (matching, stale, absent) never changes validate.sh exit codes
- SKILL.md manifest schema + rules coverage; README section "Attestation: validated_against"

Full details in [CHANGELOG.md](https://github.com/snapsynapse/skill-provenance/blob/main/CHANGELOG.md).
