---
title: Totem Shield
date: 2026-03-27 06:15:32 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.5.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.5.7**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a tool that enforces consistent architectural rules across projects by creating a persistent, model-agnostic memory layer, ensuring AI coding agents like Copilot or Claude adhere to the same guidelines without repeated instructions. It automates the enforcement of these rules through a deterministic, AI-independent validation process integrated into workflows (e.g., git hooks), preventing non-compliant code from being pushed. Totem also enables shared governance across repositories, allowing lessons learned in one project to protect others, fostering consistent and reliable code quality across an entire codebase.

## Release notes

### Patch Changes

-   Codebase audit remediation and foundation hardening
    -   New `core/src/sys/` standard library: `safeExec()`, `readJsonSafe()`, git adapter (13 functions moved from CLI to core)
    -   Error cause chains (ES2022): TotemError hierarchy accepts `cause`, 22 catch blocks updated
    -   Forbidden native module rules: 3 compiled rules enforce shared helper usage
    -   Phase-gate hooks hardened: `fix/*` exemption removed, warning upgraded to block
    -   CoreLogger DI: `setCoreLogger()` replaces `console.warn` in core
    -   CRLF fixed: `.gitattributes` forces LF, prettier `endOfLine: "lf"`
    -   Shield flag verify-not-consume: push no longer deletes the flag
    -   AST query graceful degradation: tree-sitter failures no longer crash compilation
    -   Spec gap remediation: `cleanTmpDir` helper, CLI wiring fixes

