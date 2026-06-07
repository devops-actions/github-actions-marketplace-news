---
title: Validate Syscribe Model
date: 2026-06-07 14:50:31 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

## Implementation trace (`implementedBy:`, closes #13)

Closes the downstream leg of the V-model:
`Requirement ─satisfies→ Architecture ─implementedBy→ Code ─verifies→ Test`.

- **`implementedBy:`** — a new optional field on `Part`/`PartDef` (string or list) linking an architecture element to the source artifact(s) that realise it. Paths resolve with the same rules as a TestCase's `sourceFile` (model-/repo-relative, `model:`/`repo:` prefixes, absolute, `file://`, remote `scheme://`).
- **W023** — a non-`draft` `Part`/`PartDef` whose `implementedBy:` path is missing on disk (one finding per missing path). Opt-in, draft-suppressed, remote-tolerant, gateable with `validate --deny W023`.
- **Discoverability** — `links <element>` lists `implementedBy` paths; `refs <path-or-dir>` reverse-maps a source path (or directory prefix) back to the declaring architecture element(s).

Documented in format spec §12.8, `syscribe spec validation`/`spec fields`, the validation-rule reference, the traceability guide, and the LLM authoring prompt.

---

### Also includes 0.5.0 (not previously released as a tag)

- **Configuration selections (fixes #12)** — `template Configuration` now emits the canonical `features:` map; **W016** flags a `Configuration` that parses zero selections while a feature model exists.
- **Feature parameters (§9.7)** — `FeatureDef.parameters:` validated against `parameterBindings:` (E203–E206, E222, W017).

**Full Changelog**: https://github.com/sjames/syscribe/compare/v0.4.0...v0.6.0
