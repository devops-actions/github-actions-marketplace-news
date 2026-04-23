---
title: Totem Shield
date: 2026-04-23 05:55:11 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.15.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.15.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide AI coding agents with a persistent memory and enforcement layer to prevent repeated architectural mistakes and maintain code integrity. It automates the process of turning plain-English lessons from past errors into enforceable linting rules that run offline in under two seconds, ensuring AI-generated code adheres to established standards. By acting as a deterministic safeguard, Totem helps streamline code reviews, reduces redundant feedback, and promotes consistent coding practices across projects.

## What's Changed

### Patch Changes

-   e69edb2: 1.15.1 ships the `totem proposal new` and `totem adr new` scaffolding commands that close out #1288.

    ## Governance authoring (closes #1288)

    -   `totem proposal new <title>` scaffolds a new strategy proposal at `.strategy/proposals/active/NNN-kebab-title.md` with the canonical template (Status / Author / Date / Milestone + Motivation / Problem Statement / Proposed Solution / Consequences / Decision Needed).
    -   `totem adr new <title>` scaffolds a new ADR at `.strategy/adr/adr-NNN-kebab-title.md` with the Format B convention (`# ADR NNN: Title`, Status / Context / Decision / Consequences).
    -   Both commands auto-increment the number by scanning the target directory, collision-check before any disk writes, and warn-and-continue on post-scaffold hooks so partial failures do not leave orphan files.
    -   Runs `pnpm run docs:inject` automatically when the project has that script configured, so the `PROPOSAL_INBOX` and `ADR_TABLE` dashboards in README.md refresh without manual intervention.
    -   New orchestrator at `packages/cli/src/utils/governance.ts` with 5 helpers and 2 default templates. 34 new tests covering slug validation, collision detection, number inference, template selection, and hook degradation.
    -   `@totem/pack-agent-security` allowlist updated for the 2 legitimate `spawn` sites the new commands introduce.

-   Updated dependencies [e69edb2]
    -   @mmnto/totem@1.15.1

