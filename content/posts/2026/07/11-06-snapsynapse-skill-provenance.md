---
title: Skill Provenance Validate
date: 2026-07-11 06:09:55 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/skill-provenance
marketplace: https://github.com/marketplace/actions/skill-provenance-validate
version: v5.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/snapsynapse/skill-provenance** to version **v5.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-provenance-validate) to find the latest changes.

## What's Changed

## 5.0.0 - 2026-07-10

Security hardening release for Skill Provenance manifest validation and its GitHub Actions wrapper.

### Security fixes

- Prevented `bundle-path` shell injection by transporting caller-controlled action input through an environment variable instead of interpolating it into Bash source.
- Made verify mode fail closed on missing, malformed, or duplicate manifest hash fields.
- Added explicit `hash: null` as the only intentional hash-verification opt-out.
- Made update mode repair missing or malformed hashes while preserving explicit null opt-outs.
- Kept inventory presence checks active for files whose hashes are explicitly opted out.

### Tests and evals

- Added executable CI regressions for action input transport and validator hash states.
- Added adversarial quote, separator, command-substitution, newline, and spaced-path action coverage.
- Added core evals for fail-closed verification, explicit null semantics, and update repair.
- Added a supplemental eval for GitHub Action shell safety.
- Expanded coverage from 46 to 50 scenarios: 33 core and 17 supplemental.

### Breaking change

Manifest entries may no longer omit the `hash` field. Use a complete lowercase `sha256:` value or explicit `hash: null`. This intentional contract tightening requires the 5.0.0 major version.

### Verification

- Merged GitHub CI: pass
- Canonical bundle hash verification: pass, 7 checked and 0 errors
- Validator hash-state regression suite: pass
- Action input adversarial regression: pass
- Strict and ClawHub package builds: pass
- Strict derived-bundle validation: pass
- Release-surface, GuideCheck sidecar, and `.skill` freshness checks: pass
- Bash syntax, JSON counts, skill validation, and `git diff --check`: pass
- Adversarial result: no command execution and no legitimate spaced-path false positive observed

### Deferred residuals

The next hardening tranche should define and test policies for absolute or parent-traversal manifest paths, symlinks, duplicate path entries, and the exact zero-dependency YAML subset supported by the parser.

### Asset digest

- `skill-provenance.skill` SHA-256: `c20dea21230ffcd7e799187c4e65d44c21ec4a602f04305dd36ff2a904cd4144`

