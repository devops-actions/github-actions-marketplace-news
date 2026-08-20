---
title: Setup shp
date: 2026-08-20 22:34:20 +00:00
tags:
  - timbrinded
  - GitHub Actions
draft: false
repo: https://github.com/timbrinded/shapelang
marketplace: https://github.com/marketplace/actions/setup-shp
version: v0.8.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Shape is a typed architecture conformance language that helps developers write clear, explicit, and checkable architectural claims. It checks the coherence of the system's architecture model against declared specifications, ensuring that resources are protected from unintended deletions and that component grants match function effects. Shape automates tasks such as code formatting, coverage analysis, design memory recording, and more.
---


Version updated for **https://github.com/timbrinded/shapelang** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-shp) to find the latest changes.

## Action Summary

Shape is a typed architecture conformance language that helps developers write clear, explicit, and checkable architectural claims. It checks the coherence of the system's architecture model against declared specifications, ensuring that resources are protected from unintended deletions and that component grants match function effects. Shape automates tasks such as code formatting, coverage analysis, design memory recording, and more.

## What's Changed

# Shape v0.8.0

Shape v0.8.0 adds a deterministic machine-readable model export and a bundled
visualiser skill that turns authored Shape into a self-contained local system
atlas.

## Highlights

- Add `shp inspect --json [files...]` for tools that need the canonically
  lowered effective model. The versioned export includes module-qualified
  identities, authored or generated-AST origin, effects, relations,
  implementations, bindings, rules, design memory, and aggregate counts.
- Use the same recursive discovery, parser, lowering, and reference resolution
  as the other model commands. The export contains no clock-derived field, so
  identical inputs and the same `shp` version produce identical bytes.
- Keep inspection separate from conformance. The export describes the declared
  model; it does not replace strict `shp check` or prove source behavior.

## Unix system visualiser

The coordinated `0.8.0` plugin adds a sixth skill,
`unix-system-visualiser`. It uses `shp inspect --json` to generate one offline
HTML atlas with:

- module districts, declaration details, and typed relations;
- search, pan, zoom, focus, keyboard operation, and reduced-motion support;
- authored journeys and deterministic inferred dependency tours; and
- a non-visual model index and stable browser-validation hooks.

The generator writes only to an ignored repository path unless the user gives
explicit permission. It rejects unsafe symlink escapes and unignored output,
and it keeps generated AST separate from authored architecture claims.

## Release assurance

- Expand release-candidate static conformance and focused behavioral canaries
  from five skills to all six shipped skills.
- Add deterministic inspection, visualiser generation, invalid-model,
  unignored-output, symlink-safety, multi-file module, and journey tests.
- Keep the protected `skills-release-approval` environment as the human gate
  before coordinated CLI and plugin tags can be created.

## Distribution

The release publishes Linux x64, Linux ARM64, macOS ARM64, and Windows x64
archives, release-specific installer scripts, and SHA-256 checksums. The setup
action is verified against the published release on Linux and Windows.

