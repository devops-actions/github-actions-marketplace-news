---
title: KiCad Design Review
date: 2026-04-03 06:20:35 +00:00
tags:
  - aklofas
  - GitHub Actions
draft: false
repo: https://github.com/aklofas/kicad-happy
marketplace: https://github.com/marketplace/actions/kicad-design-review
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aklofas/kicad-happy** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kicad-design-review) to find the latest changes.

## Action Summary

This GitHub Action, **kicad-happy**, provides AI-powered design review capabilities for KiCad projects. It automates the analysis of schematics, PCB layouts, and Gerber files, detecting bugs, design errors, and potential issues before manufacturing. Key features include power tree tracing, subcircuit identification, PCB layout verification, protection coverage mapping, and sleep current estimation, offering a comprehensive, automated assistant for electronics design workflows.

## What's Changed

## What's new in v1.1

New skill: **EMC pre-compliance risk analysis** — 42 rule checks that predict the most common causes of EMC test failures from your KiCad schematic and PCB layout. Plus Monte Carlo tolerance analysis, design diff, thermal hotspot estimation, no-connect detection improvements, and 22 bug fixes from a comprehensive code audit.

### Install

**Claude Code plugin** (new in v1.1):

```
/plugin marketplace add aklofas/kicad-happy
/plugin install kicad-happy@kicad-happy
```

**GitHub Action** — no changes needed if you're on `@v1`. The tag moves forward automatically.

**Manual / OpenAI Codex** — `git pull` to update your clone.

### Highlights

| Feature | Details |
|---------|---------|
| **EMC pre-compliance** | 42 rule checks: ground plane integrity, decoupling, I/O filtering, switching harmonics, diff pair skew, PDN impedance, ESD paths, crosstalk, board edge radiation, thermal-EMC, shielding. SPICE-enhanced when ngspice is available. FCC/CISPR/automotive/military. |
| **Monte Carlo tolerance** | `--monte-carlo N` runs N simulations with randomized component values. Reports 3σ bounds and per-component sensitivity analysis. |
| **Design diff** | Compares two analysis JSONs — component changes, signal parameter shifts, EMC finding deltas. GitHub Action `diff-base: true` for automatic PR comparison. |
| **Thermal hotspots** | Junction temperature estimation for LDOs, switching regulators, shunt resistors. Package Rθ_JA lookup, thermal via correction, proximity warnings. |
| **No-connect detection** | Correctly identifies NC markers, library-defined NC pins, and KiCad `unconnected` pin types. Eliminates false floating-pin warnings across 2,253 files. |
| **Plugin marketplace** | Install as a Claude Code plugin with two commands. |

### Bug fixes (code audit)

22 fixes across 8 commits, including:
- Trace inductance formula was 25x too high (wrong constant in Wheeler approximation)
- PDN target impedance was 2x too lenient (missing factor in Bogatin formula)
- Goertzel DFT normalization was 6 dB low (missing single-sided spectrum factor)
- Regulator voltage suffix parser misread 12V/15V/24V as 1.2V/1.5V/2.4V
- Inner-layer traces mapped to wrong reference plane (always defaulted to F.Cu)
- Circular board bounding boxes computed incorrectly
- Zone fill detection failed on KiCad 9/10 format
- Set precedence bug in decoupling cap net matching

Full list: [TODO-issues.md](https://github.com/aklofas/kicad-happy/blob/main/TODO-issues.md)

### GitHub Action changes

- EMC and thermal analysis now run automatically
- `diff-base: true` input for delta-only PR reviews
- No breaking changes — existing `@v1` workflows work as before

### Validated at scale

1,035 open-source KiCad projects. 6,845 schematics, 3,498 PCBs, 6,853 EMC analyses. Zero crashes. 404K+ regression assertions at 100% pass rate. 30,646 SPICE simulations. 298 constants and 95 equations verified against primary sources.

### Links

- [Full documentation](https://github.com/aklofas/kicad-happy#readme)
- [GitHub Action setup guide](https://github.com/aklofas/kicad-happy/blob/main/github-action.md)
- [EMC Pre-Compliance Guide](https://github.com/aklofas/kicad-happy/blob/main/emc-precompliance.md)
- [Test harness](https://github.com/aklofas/kicad-happy-testharness)
