---
title: React Native Audit
date: 2026-08-17 14:01:46 +00:00
tags:
  - maheshwarimrinal
  - GitHub Actions
draft: false
repo: https://github.com/maheshwarimrinal/react-native-agents
marketplace: https://github.com/marketplace/actions/react-native-audit
version: v1.0.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  React Native Agents provides AI guidance to React Native developers. It identifies issues and suggests fixes by analyzing the project context, using deep references, and explaining findings with practical examples. The action can be used to automate pull-request reviews and is compatible with various AI coding tools like Claude Code, Cursor, Windsurf, GitHub Copilot, Codex, Zed, Aider, MCP clients, and GitHub Actions.
---


Version updated for **https://github.com/maheshwarimrinal/react-native-agents** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/react-native-audit) to find the latest changes.

## Action Summary

React Native Agents provides AI guidance to React Native developers. It identifies issues and suggests fixes by analyzing the project context, using deep references, and explaining findings with practical examples. The action can be used to automate pull-request reviews and is compatible with various AI coding tools like Claude Code, Cursor, Windsurf, GitHub Copilot, Codex, Zed, Aider, MCP clients, and GitHub Actions.

## What's Changed

## React Native Agents v1.0.2

React Native Agents v1.0.2 — New Build, Doctor, Native Modules & Bundle Size Agents

## Release notes

# React Native Agents v1.0.2

This release expands React Native Agents with new implementation, diagnostics, native-module, and bundle-size capabilities.

## Highlights

### New specialist agents

- `rn-build` — Create React Native screens, components, forms, lists, and data flows.
- `rn-doctor` — Diagnose Android, iOS, Metro, dependency, environment, and build failures.
- `rn-native-modules` — Review TurboModules, Fabric, JSI, Codegen, threading, and bridge-based native modules.

### Deterministic bundle-size analysis

Added bundle analysis without an API key or model call:

```bash
npx @maheshwarimrinal/react-native-agents size
```

Compare bundle size against a base branch:

```bash
npx @maheshwarimrinal/react-native-agents size --base main
```

Budget checks are supported:

```bash
npx @maheshwarimrinal/react-native-agents size \
  --base main \
  --budget-delta 100kb
```

The analyzer now includes:

- Source-map-based package attribution
- npm, Yarn, pnpm, and Bun lockfile detection
- Strict budget validation
- Safe failure when the base bundle cannot be built
- No unexpected CLI downloads through `npx --no-install`

### Improved GitHub Action reliability

The GitHub Action now:

- Fails by default when an agent cannot complete
- Reports failed agents through action outputs
- Detects incomplete reviews caused by budget exhaustion
- Supports `fail-on-error: false` for intentionally partial reviews
- Falls back to the GitHub files API when a pull-request diff is too large
- Handles configuration files outside the repository root more reliably

Example:

```yaml
- name: React Native audit
  uses: maheshwarimrinal/react-native-agents@v1.0.2
  with:
    provider: openai
    model: gpt-5
    api-key: ${{ secrets.OPENAI_API_KEY }}
```

To allow partial results:

```yaml
with:
  fail-on-error: false
```

Use this only when a review is allowed to continue despite incomplete agent coverage.

### Improved routing

MCP and GitHub Action routing now better identifies:

- Build and environment failures
- New screen and component requests
- Native module and platform-code changes
- Performance issues described without explicit React Native keywords

Interactive agents are excluded from automatic pull-request reviews unless explicitly requested.

### Demo and documentation improvements

- Added a real-world React Native audit demo project.
- Added examples for Android native code and catalogue performance issues.
- Split the README into focused documentation pages.
- Updated generated outputs for Claude Code, Cursor, Windsurf, Copilot, and AGENTS.md.
- Expanded evaluation coverage for build, doctor, and native-module scenarios.

## Validation

This release includes expanded automated coverage for:

- Agent routing
- Bundle-size analysis
- Source-map attribution
- Budget enforcement
- API failure handling
- Build diagnostics
- Native-module reviews
- Generated target synchronization

## Upgrade

```bash
npm install @maheshwarimrinal/react-native-agents@1.0.2
```

Or run the latest CLI directly:

```bash
npx @maheshwarimrinal/react-native-agents@1.0.2 install
```

Full comparison: https://github.com/maheshwarimrinal/react-native-agents/compare/v1.0.1...v1.0.2

One important release-note detail: mention that API and budget failures now fail the GitHub Action by default. This is a behavior improvement, but users who relied on partial reviews should configure:

```yaml
fail-on-error: false
```
