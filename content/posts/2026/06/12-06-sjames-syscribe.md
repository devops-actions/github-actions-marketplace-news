---
title: Validate Syscribe Model
date: 2026-06-12 06:42:05 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.24.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.24.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

Two features.

### `--agent-instructions magicgrid` — teach an LLM to model with MagicGrid
`syscribe --agent-instructions` now takes an optional **topic**. No topic = the general model-authoring prompt (unchanged); `magicgrid` prints a dedicated, self-contained **MagicGrid modeling prompt** that teaches an LLM the method and how to express it with this tool — the `mg_` overlay fields, the `[profiles.magicgrid]` gate, the cell-by-cell authoring workflow (needs → use cases → system context → MoEs → system requirements → functional analysis → logical/physical → allocations → configurations → trade study), the `magicgrid` / `magicgrid --audit` / `trade-study` / `matrix --allocations` commands, and the `MG###` codes with how to clear each. An unknown topic exits non-zero. (`REQ-TRS-CLI-006`, `TC-TRS-CLI-006`.)

### Built-in SI units, ISQ quantity types & dimensional consistency (`W044`)
The common `ISQ` quantity-value types and `SI` units are recognised by **name or symbol** (`SI::kilogram` ≡ `SI::kg` ≡ `kg`); recognised members resolve with no `W404`, unrecognised `ISQ`/`SI` members stay lenient, and `unit:` remains permissive. When an element declares **both** a recognised `typedBy:` quantity type and a recognised `unit:`, their **physical dimensions** are checked over the seven SI base quantities — new warning **`W044`** on a mismatch. (`REQ-TRS-LIB-002`/`REQ-TRS-LIB-003`, `TC-TRS-LIB-002`/`TC-TRS-LIB-003`.)

**Qual suite 186/186**, all four models 0 errors.
