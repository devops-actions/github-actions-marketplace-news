---
title: Totem Shield
date: 2026-03-11 21:45:46 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli0.27.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@0.27.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is an AI state management tool designed to enhance local AI development by providing a shared memory and orchestration system for AI agents. It solves issues like AI amnesia, architectural mistakes, and code inconsistencies by embedding a syntax-aware vector index within projects, enabling agents to reference project constraints and decisions before generating code. Key capabilities include local-first memory storage, multi-agent workflow coordination, and defensive context management to ensure accurate and context-aware AI outputs.

## Release notes

### Minor Changes

-   20c912d: feat: saga validator for `totem docs` — deterministic post-update validation catches LLM hallucinations (checkbox mutations, sentinel corruption, frontmatter deletion, excessive content loss) before writing to disk (#356)

    fix: scope deterministic shield rules with fileGlobs — 21 of 24 compiled rules now have package-level glob scoping, preventing MCP-specific rules from firing against the entire codebase. Also fixes `matchesGlob` to support directory-prefixed patterns like `packages/cli/**/*.ts` (#357)

### Patch Changes

-   Updated dependencies [20c912d]
    -   @mmnto/totem@0.27.0

