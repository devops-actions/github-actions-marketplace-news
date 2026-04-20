---
title: Totem Shield
date: 2026-04-20 22:08:11 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.14.14
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.14.14**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents, addressing the issue of repeated mistakes and degraded architectural integrity in AI-assisted development. It automates the creation and enforcement of coding rules by converting plain-English lessons into deterministic, offline linting rules, ensuring that mistakes identified in code reviews or production are not repeated. This enables a more efficient and reliable collaboration with AI agents while maintaining code consistency and quality.

## What's Changed

### Patch Changes

-   e073dc0: Flip Pipeline 5 auto-capture on `totem review` from opt-out to opt-in.

    `--no-auto-capture` is renamed to `--auto-capture`; the default is now OFF. Observation rules captured from review findings are context-less (regex drawn from the flagged line, message taken from the reviewer, `fileGlobs` scoped to the whole codebase) and routinely pollute `compiled-rules.json` with rules that fire on unrelated files. The Liquid City Session 6 audit measured an 8-rule wave across 5 review invocations producing 13 new warnings on the next `totem lint`, up from 0.

    To preserve the old behavior, pass `--auto-capture` explicitly. Auto-capture will resume as a default once ADR-091 Stage 2 Classifier + Stage 4 Codebase Verifier ship in 1.16.0 and the LLM-emitted rule loop has gates that prevent context-less emissions.

    Closes #1579.

-   Updated dependencies [e073dc0]
    -   @mmnto/totem@1.14.14

